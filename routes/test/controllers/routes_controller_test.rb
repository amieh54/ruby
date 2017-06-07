require 'test_helper'

class RoutesControllerTest < ActionDispatch::IntegrationTest
  test "should get hello" do
    get routes_hello_url
    assert_response :success
  end

  test "should get say" do
    get routes_say_url
    assert_response :success
  end

  test "should get times" do
    get routes_times_url
    assert_response :success
  end

end
