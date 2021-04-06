class ActorEventsController < ApplicationController

  def new
  end

  def create
  end

  private

  def actor_event_params
    params.require(:actor_event).permit(:event_id, :actor_id)
  end
end
