class EventsController < ApplicationController
    before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = policy_scope(Event)
  end

  def show
    authorize @event
  end

  def new
    @event = Event.new
    authorize @event
  end

  def create
    @event = Event.new(event_params)
    authorize @event
    @event.user = current_user
    @event.actor = Actor.find(6)
    @event.assign_attributes(event_params)
    if @event.valid?
      @event.save
      redirect_to event_path(@event)
    else
      raise
      render :new
    end
  end

  def edit
    authorize @event
  end

  def update
    authorize @event
    @event.user_id = current_user
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

  def event_params
    params.require(:event).permit(:title, :duration, :actor_id, :user_id)
  end
end
