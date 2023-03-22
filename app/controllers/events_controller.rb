class EventsController < ApplicationController
  def create
    @event = Event.create(
      name: params[:name],
      location: params[:location],
      start_time: params[:start_time],
      event_type: params[:event_type],
      child_id: params[:child_id],
    )
    render :show
  end
end
