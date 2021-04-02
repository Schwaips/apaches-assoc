class ActorEventsController < ApplicationController

  def new
    @actorevent = ActorEvent.new
    @event = Event.find(params[:event_id])
  end

  def create
    @event = Event.find(params[:event_id])
    authorize @event
    @actorevent = ActorEvent.new
    @actorevent.event = @event
    @actorevent.event = @event
    @actorevent.actor = params[:actor_ids]
    if @event.valid? && @actorevent.valid?
      @event.save
      @actorevent.save
      redirect_to "/"
    else
      render :new
    end
  end

  private

  def actor_event_params
    params.require(:actor_event).permit(:event_id, :actor_id)
  end
end
