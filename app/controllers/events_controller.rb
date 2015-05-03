require 'flickr.rb'

class EventsController < ApplicationController
  include EventsHelper

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.create(event_params)
  end

  def update
    @event = Event.find(params[:id])
    if @event.update_attributes(event_params)
      flash[:notice] = "Your event has been updated!"
      redirect_to :admin
    else
      flash[:notice] = "Something went wrong"
      render partial: 'form'
    end
  end

  def edit
    @event = Event.find(params[:id])
    render partial: 'form'
  end

  def destroy
    @event = Event.find(parmas[:id])
    if @event.destroy
      flash[:notice] = "Event deleted"
    end
  end

  def media_api
    render json: albums
  end

  private

  def event_params
    params.require(:event).permit(:title, :frequency, :description, :album_link)
  end
end
