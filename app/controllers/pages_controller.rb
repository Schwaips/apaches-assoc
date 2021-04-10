class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :index ]

  def home
    @events = Event.all
    start_date = params.fetch(:start_date, Date.today).to_date
    # For a monthly view:
    @meetings = Event.where(starts_at: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)
    # Or, for a weekly view:
    @meetings = Event.where(starts_at: start_date.beginning_of_week..start_date.end_of_week)
  end

  def index
    # Scope your query to the dates being shown:
    start_date = params.fetch(:start_date, Date.today).to_date
    # For a monthly view:
    @meetings = Event.where(starts_at: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)
    # Or, for a weekly view:
    @meetings = Event.where(starts_at: start_date.beginning_of_week..start_date.end_of_week)
  end

end
