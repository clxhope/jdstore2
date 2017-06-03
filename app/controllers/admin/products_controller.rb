class Admin::ProductsController < ApplicationController

  layout "admin"

  before_action :authenticate_user!
  before_action :admin_required

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    @photos = @product.photos.all
  end

  def new
    @product = Product.new
    @photo = @product.photos.build
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      if params[:photos] != nil
        params[:photos]["avatar"].each do |a|
          @photo = @product.photos.create(:avatar => a)
        end
      end
      redirect_to admin_products_path, notice: "创建成功！"
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])

    if params[:photos] != nil
      @product.photos.destroy_all  # 如果有新参数传过来，就删掉原来的图，以新的为准
      params[:photos]["avatar"].each do |a|
        @product.photos.create(:avatar => a)
      end
      @product.update(product_params)
      redirect_to admin_products_path, notice: "更新成功!"
    elsif @product.update(product_params)
      redirect_to admin_products_path, notice: "更新成功!"
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:notice] = "已成功删除此商品"
    redirect_to admin_products_path
  end

  private

  def product_params
    params.require(:product).permit(:title, :description, :quantity, :price, :image, {avatars: []})
  end

end
