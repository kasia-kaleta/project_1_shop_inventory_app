require("minitest/autorun")
require_relative("../brands.rb")

class TestBrand < MiniTest::Test

  def setup
    options = {"id" => 1, "name" => "Benefit", "info" => "test"}

    @brand = Brand.new(options)
    @brand.save()
  end

  def test_name()
    result = @brand.name()
    assert_equal("Benefit", result)
  end

  def test_info()
    result = @brand.info()
    assert_equal("test", result)
  end

  def test_find()
    brand = Brand.find(1)
    assert_equal('Benefit', brand.name)
  end




end
