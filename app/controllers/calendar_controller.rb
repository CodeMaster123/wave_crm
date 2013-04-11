class CalendarController < ApplicationController
  before_filter :authenticate_user!
  filter_resource_access
  def index
  end

end
