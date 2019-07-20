require("minitest/autorun")
require_relative("../categories.rb")

class TestCategory < MiniTest::Test

  def setup
    options = {"id" => 1, "name" => "complexion"}

    @category = Category.new(options)
    @category.save()
  end

  def test_name()
    result = @category.name()
    assert_equal("complexion", result)
  end


end
