class BaseController < ApplicationController
  before_filter :authenticate_user!
  helper_method :current_user

  protected
  def fetch_company
    @company = Company.includes(:users).find(current_user.company_id)
  end
end
