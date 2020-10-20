class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def show
    @event = Event.find params[:id]
  end

  def attend
    event = Event.find params[:id]
    @current_user.events << event
    redirect_to root_path
  end

  def unattend
    event = Event.find params[:id]
    @current_user.events.delete(event)
    redirect_to root_path
  end

  def new
    @event = Event.new
  end

  def create
    event = Event.create event_params
    redirect_to event
  end

  def edit
    @event = Event.find params[:id]
    @events = Event.all
  end

  def update
    event = Event.find params[:id]
    event.update event_params
    redirect_to event_path(event.id)
  end

  def destroy
    event = Event.find params[:id]
    event.destroy
    redirect_to events_path
  end

  private
    def event_params
      params.require(:event).permit(:name, :date, :organiser, :coach, :image, :dropzone_id, :price, :contact, :discipline_ids => [])
    end
end
