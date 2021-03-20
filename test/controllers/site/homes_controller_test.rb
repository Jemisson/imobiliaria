require 'test_helper'

class Site::HomesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get site_homes_index_url
    assert_response :success
  end

end
