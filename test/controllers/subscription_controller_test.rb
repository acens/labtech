require 'test_helper'

class SubscriptionControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get subscription_index_url
    assert_response :success
end
