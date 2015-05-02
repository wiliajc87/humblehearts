class EventsController < ApplicationController

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
      flash[:notice] = "Your Event has been Updated"
      redirect_to :root
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

  private

  def event_params
    params.require(:event).permit(:title, :frequency, :description, :album_link)
  end
end
