require 'test_helper'

class EmployeeTrainingControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get employee_training_index_url
    assert_response :success
  end

  test "should get show" do
    get employee_training_show_url
    assert_response :success
  end

  test "should get edit" do
    get employee_training_edit_url
    assert_response :success
  end

  test "should get create" do
    get employee_training_create_url
    assert_response :success
  end

  test "should get update" do
    get employee_training_update_url
    assert_response :success
  end

end
