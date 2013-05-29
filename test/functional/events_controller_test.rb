require 'test_helper'
require 'declarative_authorization/maintenance'

class EventsControllerTest < ActionController::TestCase
    include Devise::TestHelpers
    include Authorization::TestHelper

    setup do
        @event = events(:one)
        @user = users(:one)
        sign_in @user
    end

    test "should get index" do
        get :index
        assert_response :success
        assert_not_nil assigns(:events)
    end

    test "should get new" do
        get :new
        assert_response :success
    end

    test "should create event" do
        assert_difference('Event.count') do
            post :create, event: { title: @event.title, starts_at: @event.starts_at, description: @event.description, user_id: @event.user_id, company_id: @event.company_id}
        end

        assert_redirected_to events_path
    end

    test "should show event" do
        get :show, id: @event
        assert_response :success
    end

    test "should get edit" do
        get :edit, id: @event
        assert_response :success
    end

    test "should update event" do
        put :update, id: @event, notification: { title: @event.title, starts_at: @event.starts_at, description: @event.description, user_id: @event.user_id, company_id: @event.company_id}
        assert_redirected_to events_path
    end

    test "should destroy event" do
        assert_difference('Event.count', -1) do
            delete :destroy, id: @event
        end

        assert_redirected_to events_path
    end

end
