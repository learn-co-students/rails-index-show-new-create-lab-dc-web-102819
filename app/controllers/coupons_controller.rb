class CouponsController < ApplicationController

  def index
    @coupon = Coupon.all
  end

  def show
    find_coupon
  end

  def new
    @coupon = Coupon.new
  end
  def create
    @coupon = Coupon.create(coupons_strong_params)
    redirect_to coupon_path(@coupon)
  end

  def edit
    find_coupon
  end

  def update
    coupon = find_coupon
    coupon.update(coupons_strong_params)
    redirect_to coupon_path(coupon)
  end

  def destroy
    coupon = find_coupon
    coupon.destroy
    redirect_to coupons_path
  end

  private
  def coupons_strong_params
    params.require(:coupon).permit(:coupon_code, :store)
  end
  def find_coupon
    @coupon = Coupon.find(params[:id])
  end
end
