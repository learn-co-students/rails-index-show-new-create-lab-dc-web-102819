class CouponsController < ApplicationController

	before_action :find_coupon, only: [:show, :edit]


	def index
		@coupons = Coupon.all
	end

	def show
	end

	def new
		@coupon = Coupon.new
	end

	def create
		coupon = Coupon.create(store: params[:coupon]["store"], coupon_code: params[:coupon]["coupon_code"])
		redirect_to coupon_path(coupon)
	end

	def edit
	end

	def find_coupon
		@coupon = Coupon.find(params[:id])
	end

end
