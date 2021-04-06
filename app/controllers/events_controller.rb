class EventsController < ApplicationController
    before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = policy_scope(Event)
  end

  def show
    authorize @event
    @actorevent = ActorEvent.new
    authorize @actorevent
  end

  def new
    @event = Event.new
    @actorevent = ActorEvent.new
    # actors_name
    authorize @event
  end

  def create
    @event = Event.new(event_params)
    authorize @event
    # @actors = @event.actors
    @event.user = current_user
    @params = params[:event][:actor_ids] if params[:event][:actor_ids]
    @event.assign_attributes(event_params)
    if @event.valid?
      @event.save
      actor_event_method(@params, @event.id)
      redirect_to "/"
    else
      render :new
    end
  end

  def edit
    authorize @event
  end

  def update
    authorize @event
    @event.user = current_user
    @event.assign_attributes(event_params)
    if @event.valid?
      @event.save
      redirect_to event_path(@event)
    else
      render :edit
    end
  end

  def destroy
    authorize @event
    @event.destroy
    redirect_to events_path
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def actors_name
    @actors = Actor.all
    @names = []
    @actors.each do |actor|
      @names <<  actor.first_name + " " + actor.last_name
    end
  end

  def event_params
    params.require(:event).permit(:title, :duration, :user_id, :photo, :intention_note, :summary, :actors)
  end

  def actor_event_method(params, event_id)
    params.each do |actor|
      unless actor.blank?
        ActorEvent.new(event_id: event_id, actor_id: actor).save!
      end
    end
  end
end
