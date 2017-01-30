require 'test_helper'

class BankControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bank_index_url
    assert_response :success
  end

  test "should get create" do
    get bank_create_url
    assert_response :success
  end

  test "should get update" do
    get bank_update_url
    assert_response :success
  end

end
