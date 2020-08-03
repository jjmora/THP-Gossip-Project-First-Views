require 'test_helper'

class DynPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get gossiper" do
    get dyn_pages_gossiper_url
    assert_response :success
  end

end
