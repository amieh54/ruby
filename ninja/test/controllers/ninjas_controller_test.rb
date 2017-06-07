require 'test_helper'

class NinjasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ninjas_index_url
    assert_response :success
  end

  test "should get new" do
    get ninjas_new_url
    assert_response :success
  end

  test "should get show" do
    get ninjas_show_url
    assert_response :success
  end

end
