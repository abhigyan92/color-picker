require 'test_helper'

class ColorPickerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get color_picker_index_url
    assert_response :success
  end

end
