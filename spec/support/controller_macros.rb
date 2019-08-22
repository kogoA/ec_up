module ControllerMacros
  def login_admin(admin)
    @request.env["devise.mapping"] = Devise.mappings[:admin]
    sign_in admin
  end

  def login_user(user)
    @request.env["devise.mapping"] = Devise.mappings[:user]
    user ||= FactoryBot.create(:user)
    user.confirm
    sign_in user
  end
end