class Admins::DashboardsController < Admins::ApplicationController
  before_action :authenticate_admin!
  layout 'admin_dashboards'
  def index
  end
end