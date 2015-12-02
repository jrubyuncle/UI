class Admin::ProductsController < ApplicationController

	layout "admin"

	before_action :authenticate_user!
	before_action :admin_required
	before_action :set_s3_direct_post, only: [:new, :edit, :create, :update]
	
	def index
		@products = Product.all
	end
	
  def new
    @product = Product.new
    @photo = @product.build_photo
  end

  def edit
  	@product = Product.find(params[:id])
  	@photo = @product.photo
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to admin_products_path
    else
      render :new
    end
  end

  def update
  	@product = Product.find(params[:id])

  	if @product.update(product_params)  	
  		redirect_to admin_products_path
  	else
  		render :edit
  	end
  end

  def destroy
  end

private

  def product_params
		params.require(:product).permit(:title, :description, :quantity, :price,
				photo_attributes: [:image, :id])    
  end
	def set_s3_direct_post
		@s3_direct_post = S3_BUCKET.presigned_post(key: "uploads/#{SecureRandom.uuid}/${filename}", success_action_status: '201', acl: 'public-read')
	end
end