require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title,"Members only club"
    assert_equal full_title("Home"), "Home | Members only club"
  end

end