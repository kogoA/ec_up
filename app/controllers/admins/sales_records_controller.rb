class Admins::SalesRecordsController < Admins::ApplicationController
  def show
    @purchase_record_products = current_admin.purchase_record_products.preload(:product).order('created_at desc')
    if params[:start_at] && params[:end_at]
      start_at = Date.parse(params[:start_at])
      end_at = Date.parse(params[:end_at])
      @purchase_record_products = @purchase_record_products.where(created_at: start_at..end_at).order('created_at desc')
      render :show_current
    end
  end
end
