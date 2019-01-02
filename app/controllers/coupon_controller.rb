class CouponsController < ApplicationController
  def index
    @controllers = Controller.all
  end

  def show
    @controller = Controller.find(params[:id])
  end

  def new
    @controller = Controller.new
  end

  def create
    @controller = Controller.new
    @controller.coupon_code = params[:coupon_code]
    @controller.store = params[:store]CONT
    @controller.save
    redirect_to controller_path(@controller)
  end
end
