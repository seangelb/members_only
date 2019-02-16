require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  test "should get root" do
    get static_pages_home_url
    assert_response :success
  end

  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Home | Members only club"
  end

  test "should get login" do
    get static_pages_login_url
    assert_response :success
    assert_select "title", "Login | Members only club"
  end


end
