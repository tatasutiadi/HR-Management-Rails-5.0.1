require 'test_helper'

class DepartementControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get departement_index_url
    assert_response :success
  end

  test "should get view" do
    get departement_view_url
    assert_response :success
  end

  test "should get delete" do
    get departement_delete_url
    assert_response :success
  end

  test "should get update" do
    get departement_update_url
    assert_response :success
  end

end
