require 'test_helper'

class ShedulesControllerTest < ActionDispatch::IntegrationTest
  test "schould get index" do
    get schedules_index_url
    assert_response :success
  end

end
