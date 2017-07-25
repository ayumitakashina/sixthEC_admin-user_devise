require 'test_helper'

class BicyclecategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bicyclecategories_index_url
    assert_response :success
  end

  test "should get add" do
    get bicyclecategories_add_url
    assert_response :success
  end

  test "should get edit" do
    get bicyclecategories_edit_url
    assert_response :success
  end

end
