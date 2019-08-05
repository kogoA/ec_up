class PurchaseRecord < ApplicationRecord
  belongs_to :user
  has_many :purchase_record_products, dependent: :destroy
  has_many :products, through: :purchase_record_products
  accepts_nested_attributes_for :purchase_record_products, allow_destroy: true
end
