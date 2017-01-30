require 'test_helper'

class EducationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get education_index_url
    assert_response :success
  end

  test "should get delete" do
    get education_delete_url
    assert_response :success
  end

  test "should get update" do
    get education_update_url
    assert_response :success
  end

  test "should get view" do
    get education_view_url
    assert_response :success
  end

end
