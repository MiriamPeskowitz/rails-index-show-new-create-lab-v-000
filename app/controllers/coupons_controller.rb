class CouponsController < ApplicationController
	# before_action :set_student, only: :show	

	def index
		@coupons = Coupon.all
	end 

	def show
		set_coupon
	end

	def new 
	end 

	def create
		@coupon = Coupon.create!(coupon_code: params[:coupon_code], store: params[:store])

		# @coupon[:coupon_code] = params[:coupon_code]
		# @coupon[:store] = params[:store]
		# @coupon.save
		redirect_to coupon_path(@coupon)
	end 

	private
	    def set_coupon
	      @coupon = Coupon.find(params[:id])
	    end

end 
  






