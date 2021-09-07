require "test_helper"

class HeartControllerTest < ActionDispatch::IntegrationTest
  test "should get hello" do
    get heart_hello_url
    assert_response :success
  end
end
