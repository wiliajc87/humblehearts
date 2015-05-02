class ServicesController < ApplicationController
  def index
    @services = Service.all
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(:service_params)
    @service.save
  end

  def update
    @service = Service.find(params[:id])
  end

  def delete
    @service = Service.find(params[:id]).destroy
  end
  private
    def service_params
      params.require(:service).permit(:name, :phone, :url, :address, :category)
    end
end