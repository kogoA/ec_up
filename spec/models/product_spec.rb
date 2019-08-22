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

require 'rails_helper'

RSpec.describe Product, type: :model do

  # it "is valid with a name, email, password, password_confirmation" do
  #     user = build(:user)
  #     expect(user).to be_valid
  #   end

  # it "is invalid without a password_confirmation although with a password" do
  #     user = build(:user, password_confirmation: "")
  #     user.valid?
  #     expect(user.errors[:password_confirmation]).to
  #   end

    # it "is invalid with a duplicate email address" do
    #   user = create(:user)
    #   another_user = build(:user, email: user.email)
    #   another_user.valid?
    #   expect(another_user.errors[:email]).to
    # end


end
