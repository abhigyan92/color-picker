require 'test_helper'

class SelectionsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get selections_create_url
    assert_response :success
  end

end
