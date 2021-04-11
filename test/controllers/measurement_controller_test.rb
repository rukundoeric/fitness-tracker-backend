require "test_helper"

class MeasurementControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get measurement_index_url
    assert_response :success
  end

  test "should get show" do
    get measurement_show_url
    assert_response :success
  end

  test "should get create" do
    get measurement_create_url
    assert_response :success
  end
end
