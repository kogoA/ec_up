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

  def basket_total_price(product_ids: product_ids)
    PriceCalculator.total(products)
  end

  def prepare_purchase_record
    purchase_record || create_purchase_record
  end


  def checkout!(token, product_ids:)
    total = basket_total_price(product_ids: product_ids)
    transaction do
      basket = products.where(product_id: product_ids)
      products.each(&:destroy!)
      purchase_record = prepare_purchase_record
      ids = product_ids.map { |id| { product_id: id } }
      purchase_record.purchase_record_products.create!(ids)
    end

    Charge.create!(total, token)
  end
end