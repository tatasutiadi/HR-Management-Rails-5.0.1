require 'test_helper'

class CompanyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get company_index_url
    assert_response :success
  end

  test "should get update" do
    get company_update_url
    assert_response :success
  end

  test "should get delete" do
    get company_delete_url
    assert_response :success
  end

  test "should get view" do
    get company_view_url
    assert_response :success
  end

end
