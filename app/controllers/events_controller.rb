require 'flickr.rb'

# FlickRaw.api_key="b2aef871a11feaaacea0b0095199ff81"
# FlickRaw.shared_secret="801763578c315854"

class EventsController < ApplicationController

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
    flickr = Flickr.new(ENV["FLICKR_KEY"])
    user = flickr.users('humbleheartsorg@yahoo.com')
    list = user.photos
    sources = []
    list.each do |hash|
      sources.push({
        src: "https://farm#{hash["farm"]}.staticflickr.com/#{hash["server"]}/#{hash["id"]}_#{hash["secret"]}.jpg",
        title: hash.title,
        desc: hash.description
      })
    end
    render json: sources
  end

  private

  def event_params
    params.require(:event).permit(:title, :frequency, :description, :album_link, :date_of_event)
  end
end