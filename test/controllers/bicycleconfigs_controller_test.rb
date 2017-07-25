require 'test_helper'

class BicycleconfigsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bicycleconfigs_index_url
    assert_response :success
  end

  test "should get edit" do
    get bicycleconfigs_edit_url
    assert_response :success
  end

end
