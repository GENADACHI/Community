require 'test_helper'

class MenbersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get menbers_index_url
    assert_response :success
  end

  test "should get show" do
    get menbers_show_url
    assert_response :success
  end

  test "should get new" do
    get menbers_new_url
    assert_response :success
  end

  test "should get edit" do
    get menbers_edit_url
    assert_response :success
  end

end
