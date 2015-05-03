class MediaController < ApplicationController

  def index
    @media = Medium.all
  end

  def new
    @medium = Medium.new
  end

  def create
    @medium = Medium.new(medium_params)
    @medium.save
  end

  def update
    @medium = Medium.find(params:[:id])
    @medium.update
  end

  def delete
    @medium = Medium.find(params:[:id])
    @medium.destroy
  end

  def medium_params
    params.require(:medium).permit(:title, :link, :type)
  end
end
