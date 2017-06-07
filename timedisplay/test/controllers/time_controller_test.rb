require 'test_helper'

class TimeControllerTest < ActionDispatch::IntegrationTest
  test "should get method" do
    get time_method_url
    assert_response :success
  end

  test "should get main" do
    get time_main_url
    assert_response :success
  end

end
