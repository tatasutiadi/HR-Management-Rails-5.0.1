require 'test_helper'

class PositionControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get position_index_url
    assert_response :success
  end

  test "should get update" do
    get position_update_url
    assert_response :success
  end

  test "should get view" do
    get position_view_url
    assert_response :success
  end

  test "should get delete" do
    get position_delete_url
    assert_response :success
  end

end
