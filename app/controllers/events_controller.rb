class EventsController < ApplicationController
  def index
    @events = Event.all
    render :index
  end

  def create
    @event = Event.create(
      name: params[:name],
      location: params[:location],
      start_time: params[:start_time].to_datetime,
      event_type: params[:event_type],
      child_id: params[:child_id],
    )
    render :show
  end

  def show
    @event = Event.find_by(id: params[:id])
    render :show
  end
end
