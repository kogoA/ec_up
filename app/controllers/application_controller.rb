class ApplicationController < ActionController::Base
  layout 'login'
  def after_sign_in_path_for(resource)
    if resource.is_a?(User)
      root_path
    elsif resource.is_a?(Admin)
      admins_root_path
    end
  end

  private
  # deviseの管理者権限logout後のリダイレクト先指定
  def after_sign_out_path_for(resource)
    if resource == :user
      root_path
    else resource == :admin
      new_admin_session_path
    end
  end
end