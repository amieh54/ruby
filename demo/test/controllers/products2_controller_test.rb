require 'test_helper'

class Products2ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get products2_index_url
    assert_response :success
  end

  test "should get new" do
    get products2_new_url
    assert_response :success
  end

end
