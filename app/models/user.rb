# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  confirmation_token     :string
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class User < ApplicationRecord
  has_one :basket, dependent: :destroy
  has_one :purchase_record, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable
  has_many :baskets
  has_many :products, through: :baskets

  def basket_total_price
    PriceCalculator.total(products)
  end

  def prepare_purchase_record
    purchase_record || create_purchase_record
  end

  def basket_total_price(product_ids: nil)
    products = product_ids ? self.products.where(id: product_ids) : self.products
    PriceCalculator.total(products)
  end


  def checkout!(token)
    total = basket_total_price
    transaction do
      purchase_record = PurchaseRecord.new(user_id: id)
      purchase_record.save
      products.each do |product|
        purchase_record.purchase_record_products.create!(product_id: product.id)
      end
      baskets.each(&:destroy!)
    end
    Charge.create!(total, token)
  end
end