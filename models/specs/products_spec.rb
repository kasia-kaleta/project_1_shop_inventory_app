require("minitest/autorun")
require_relative("../products.rb")

class TestProduct < MiniTest::Test

  def setup
    options = {"id" => 1, "name" => "Volume Million Lashes Mascara", "description" => "Millionizer Brush - a multitude of bristles separate lashes for a fanned-out effect. Excess Wiper - in-built wiper system removes excess mascara, wiping brush free of clumps.",
      "quantity" => 20, "buying_cost" => 6.99, "selling_price" => 10.99, "brand_id" => 2, "category_id" => 2}

      @product = Product.new(options)
    end

    def test_first_name()
      result = @product.name()
      assert_equal("Volume Million Lashes Mascara", result)
    end

    def test_description()
      result = @product.description()
      assert_equal("Millionizer Brush - a multitude of bristles separate lashes for a fanned-out effect. Excess Wiper - in-built wiper system removes excess mascara, wiping brush free of clumps.", result)
    end

    def test_quantity()
      result = @product.quantity()
      assert_equal(20, result)
    end

    def test_buying_cost()
      result = @product.buying_cost()
      assert_equal(6.99, result)
    end

    def test_selling_price()
      result = @product.selling_price()
      assert_equal(10.99, result)
    end




  end
