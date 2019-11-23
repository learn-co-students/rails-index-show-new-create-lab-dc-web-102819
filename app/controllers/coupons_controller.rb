class CouponsController < ApplicationController

    def main
        
    end
    def index
        @coupons = Coupon.all
    end
   
    def new
    end
    
    def show
        @coupons = Coupon.find(params[:id])
    end
    
    
#  t.string :coupon_code
#   t.string :store
    def create
        @coupon = Coupon.new
        @coupon[:coupon_code] = params[:coupon][:coupon_code]
        @coupon[:store] = params[:coupon][:store]
        @coupon.save
        redirect_to coupon_path(@coupon)
    end
end
