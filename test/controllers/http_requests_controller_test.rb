require 'test_helper'

class HttpRequestsControllerTest < ActionController::TestCase
  setup do
    @http_request = http_requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:http_requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create http_request" do
    assert_difference('HttpRequest.count') do
      post :create, http_request: { address: @http_request.address, ip: @http_request.ip }
    end

    assert_redirected_to http_request_path(assigns(:http_request))
  end

  test "should show http_request" do
    get :show, id: @http_request
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @http_request
    assert_response :success
  end

  test "should update http_request" do
    patch :update, id: @http_request, http_request: { address: @http_request.address, ip: @http_request.ip }
    assert_redirected_to http_request_path(assigns(:http_request))
  end

  test "should destroy http_request" do
    assert_difference('HttpRequest.count', -1) do
      delete :destroy, id: @http_request
    end

    assert_redirected_to http_requests_path
  end
end
