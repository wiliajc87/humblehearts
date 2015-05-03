require 'flickr.rb'

# FlickRaw.api_key="b2aef871a11feaaacea0b0095199ff81"
# FlickRaw.shared_secret="801763578c315854"

class EventsController < ApplicationController

  def index
    # @events = Event.all
    @events= Facebook.flickr_photos
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

  # def media_api
  #   flickr = Flickr.new(ENV["FLICKR_KEY"]) 
  #   user = flickr.users('humbleheartsorg@yahoo.com')
  #   list = user.photos
  #   sources = []
  #   list.each do |hash|
  #     sources.push({
  #       src: "https://farm#{hash["farm"]}.staticflickr.com/#{hash["server"]}/#{hash["id"]}_#{hash["secret"]}.jpg",
  #       title: hash.title,
  #       desc: hash.description
  #     })
  #   end
  #   render json: sources
  # end

  private

  def event_params
    params.require(:event).permit(:title, :frequency, :description, :album_link)
  end
end
