class CalendarController < ApplicationController
  def index
    @events = Event.all
  end
end
