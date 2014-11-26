class PremiumPackagesController < ApplicationController
  before_action :set_premium_package, only: [:show, :edit, :update, :destroy]
  respond_to :html
  def index
    @premium_packages = PremiumPackage.all
    respond_with(@premium_packages)
  end

  def show
    respond_with(@premium_package)
  end

  def new
    @premium_package = PremiumPackage.new
    respond_with(@premium_package)
  end

  def edit
  end

  def create
    @premium_package = PremiumPackage.new(user_id: current_user.id, price: 100.00)
    token = params[:stripeToken]
    customer = Stripe::Customer.create(
      :card => token, 
      :description => @premium_package.user.email
    )
    Stripe::Charge.create(
      :amount => @premium_package.price.to_i * 100, 
      :currency => 'aud', 
      :customer => customer.id
    )
    @premium_package.customer_id = customer.id
    @premium_package.save
    redirect_to :back
  end

  def update
    @premium_package.update(premium_package_params)
    respond_with(@premium_package)
  end

  def destroy
    @premium_package.destroy
    respond_with(@premium_package)
  end

  private
    def set_premium_package
      @premium_package = PremiumPackage.find(params[:id])
    end

    def premium_package_params
      params.require(:premium_package).permit(:user_id, :price, :customer_id)
    end
end
