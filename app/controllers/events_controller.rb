  class EventsController < ApplicationController

    def index
      @events = Event.order "created_at desc"
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
      if params[:file].present?
        req = Cloudinary::Uploader.upload(params[:file])
        event.image = req["public_id"]
        event.save
      end
      redirect_to event
    end

    def edit
      @event = Event.find params[:id]
    end

    def update
      event = Event.find params[:id]
      if params[:file].present?
        req = Cloudinary::Uploader.upload(params[:file])
        event.image = req["public_id"]
      end
      event.update event_params
      event.save
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
