# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string           not null
#  description :text             not null
#  price       :integer          not null
#  unit        :string           default("yen"), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Product < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :unit, presence: true
  has_many :basket, dependent: :destroy
  has_many :purchase_record_products, dependent: :destroy
  belongs_to :admin, optional: true
  USD_RATE = 110.freeze


  extend Enumerize
  enumerize :unit, in: %i[yen usd]
  include Hashid::Rails
  mount_uploader :image, ImageUploader
end

