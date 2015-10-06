require 'flickr.rb'

class EventsController < ApplicationController
  include EventsHelper

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def show
    @event = Event.find(params[:id])
    if @event.destroy
      redirect_to administration_path
    else
      redirect_to administration_path
    end
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to administration_path
    end
  end

  def update
    @event = Event.find(params[:id])
    if @event.update_attributes(event_params)
      redirect_to administration_path
    end
  end

  def delete
    @event = Event.find(params[:id])
    if @event.destroy
      redirect_to administration_path
    else
      redirect_to administration_path
    end
  end

  def media_api
    render json: albums
  end

  private

  def event_params
    params.require(:event).permit(:title, :frequency, :description, :album_link, :date_of_event)
  end
end
