require 'test_helper'

class BicyclepostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bicycleposts_index_url
    assert_response :success
  end

  test "should get add" do
    get bicycleposts_add_url
    assert_response :success
  end

  test "should get edit" do
    get bicycleposts_edit_url
    assert_response :success
  end

  test "should get delete" do
    get bicycleposts_delete_url
    assert_response :success
  end

end
