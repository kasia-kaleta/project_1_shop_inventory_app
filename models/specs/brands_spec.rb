require("minitest/autorun")
require_relative("../brands.rb")

class TestBrand < MiniTest::Test

  def setup
    options = {"id" => 1, "name" => "Benefit", "info" => "test"}

    @brand = Brand.new(options)
  end
