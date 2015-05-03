class MediaController < ApplicationController
  include Categories
  def index
    media_categorify
  end

  def new
    @medium = Medium.new
  end

  def create
    @medium = Medium.new(medium_params)
    if @medium.save
      redirect_to administration_path
    end
  end

  def show
    @medium = Medium.find(params[:id])
    if @medium.destroy
      redirect_to administration_path
    else
      redirect_to administration_path
    end
  end

  def update
    @medium = Medium.find(params:[:id])
    if @medium.update(medium_params)
      redirect_to administration_path
    end
  end

  def delete
    @medium = Medium.find(params:[:id])
    if @medium.destroy
      redirect_to administration_path
    else
      redirect_to administration_path
    end
  end

  def medium_params
    params.require(:medium).permit(:title, :link, :category)
  end
end