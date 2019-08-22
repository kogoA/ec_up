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

require 'rails_helper'

RSpec.describe User, type: :model do

# it "factorybot is in function" do
#   user = build(:user)
#   expect(user).to be_valid
# end

it "is valid with a email, and password" do
user = User.new(
      email:      "tester@example.com",
      password:   "passowrd123",
)
    expect(user).to be_valid
end

# it "重複したメールアドレスなら無効な状態であること" do
#   User.create(
#     email:      "tester@example.com",
#     password:   "passowrd123",
#   )
#     password { password }
#     password_confirmation { password }
#    user = User.new(
#     email:      "tester@example.com",
#     password:   "passowrd12345",
#    )
#     password { password }
#     password_confirmation { password }
#    user.valid?
#    expect(user.errors[:email])
#   end

# it "重複したメールアドレスなら無効な状態であること" :user02 do
#   user = create(:user02)
#   user2 = create(:user02)
#   expect(user).to be_invalid
# end


# it "is invalid with a duplicate email address" do
# user1 = FactoryBot.create(user)
#   expect(user1).to be_valid
# end
  
end

