require "test_helper"

class ClickLinksTest < Capybara::Rails::TestCase

  def test_access_root
    visit root_path
    assert_text 'Hamburger Restaurants'
  end

end