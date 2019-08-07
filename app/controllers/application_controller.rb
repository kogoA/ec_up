class ApplicationController < ActionController::Base
  layout 'login'
  def after_sign_in_path_for(resource)
    if resource.is_a?(User)
      root_path
    elsif resource.is_a?(Admin)
      admins_root
    end
  end

  layout 'login_admin'
  def admins_root
    admins_root_path
  end

  # deviseの管理者権限logout後のリダイレクト先指定
  def after_sign_out_path_for(resource)
    admins_root_path # ログアウト後に遷移するpathを設定
  end
end
