require 'test_helper'
require 'declarative_authorization/maintenance'

class CalendarControllerTest < ActionController::TestCase
    include Devise::TestHelpers
    include Authorization::TestHelper

    setup do
        @user = users(:one)
        sign_in @user
    end

    test "should check if calendar index is rendered" do
        get :index
    end
end
