class Admins::ProductsController < Admins::ApplicationController
  def new
    @product = current_admin.products.build
  end

  def create
    @product = current_admin.products.build(product_params)
    if @product.save
      redirect_to new_admins_product_path, notic: '作成に成功'
    else
      flash[:error] = '作成に失敗'
      render :new
    end
  end

  def index
    @products = Product.all
  end

  def destroy
    @product = Product.find_by_hashid(params[:hashid])
    @product.destroy
    redirect_to(root_path)
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :price, :unit, :image)
  end
end
