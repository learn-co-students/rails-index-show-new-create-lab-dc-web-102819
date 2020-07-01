class CouponsController < ApplicationController
  before_action :find_coupon, only: [:show]
  
  def index
    @coupons = Coupon.all
  end

  def show
    find_coupon
  end

  def new
    @coupon = Coupon.new
  end

  def create
    @coupon = Coupon.create(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
    @coupon.save
    redirect_to coupon_path(@coupon)
  end

  private

  def find_coupon
    @coupon = Coupon.find(params[:id])
  end
end
