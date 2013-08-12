require 'test_helper'
require 'declarative_authorization/maintenance'

class ActivitiesControllerTest < ActionController::TestCase
    include Devise::TestHelpers
    include Authorization::TestHelper

    setup do
        @user = users(:one)
        sign_in @user
    end

    test "should get index" do
        get :index
        assert_response :success
    end

end
