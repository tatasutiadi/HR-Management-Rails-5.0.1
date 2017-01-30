require 'test_helper'

class HistoryEducationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get history_education_index_url
    assert_response :success
  end

  test "should get show" do
    get history_education_show_url
    assert_response :success
  end

  test "should get edit" do
    get history_education_edit_url
    assert_response :success
  end

  test "should get delete" do
    get history_education_delete_url
    assert_response :success
  end

  test "should get create" do
    get history_education_create_url
    assert_response :success
  end

end
