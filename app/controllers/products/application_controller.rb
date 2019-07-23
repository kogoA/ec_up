class Products::ApplicationController < ApplicationController
  before_action :authenticate_user!
  # before_action :authenticate_admin!

  # ログイン後に遷移するページ
  # def after_sign_in_path_for(resource)
  #   root_path(resource)
  # end
end