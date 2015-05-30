class BurgersController < ApplicationController
  def index
    yml_file_path = Rails.root.join("list-of-hamburger-restaurants/list-of-hamburgers.yml")
    @burgers = YAML.load_file(yml_file_path)
  end
end
