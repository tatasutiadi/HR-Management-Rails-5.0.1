require 'test_helper'

class ReligionControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get religion_index_url
    assert_response :success
  end

  test "should get view" do
    get religion_view_url
    assert_response :success
  end

  test "should get update" do
    get religion_update_url
    assert_response :success
  end

  test "should get delete" do
    get religion_delete_url
    assert_response :success
  end

end
