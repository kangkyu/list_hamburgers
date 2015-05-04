require "test_helper"

class ClicksTest < ActionDispatch::IntegrationTest
  include Capybara::DSL

  def setup
    yml_file_path = Rails.root.join("lib/tasks/list-of-hamburger-restaurants/list-of-hamburgers.yml")
    @burgers = YAML.load_file(yml_file_path)
  end

  def test_links
    @burgers.each do |burger|
      get root_path
      assert_select "a[href=?]", burger["url"]
    end
  end

  def test_links_success
    @burgers.each do |burger|
      get burger["url"]
      assert_response :success
    end
  end
end
