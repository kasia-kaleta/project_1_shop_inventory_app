require_relative('../db/sql_runner')


class Product

  attr_reader :id
  attr_accessor :name, :description, :quantity, :buying_cost, :selling_price, :brand_id, :category_id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @description = options['description']
    @quantity = options['quantity'].to_i
    @buying_cost = options['buying_cost'].to_f
    @selling_price = options['selling_price'].to_f
    @brand_id = options['brand_id']
    @category_id = options['category_id']
  end

  def save()
    sql = "INSERT INTO products (name, description, quantity, buying_cost, selling_price, brand_id, category_id)
    VALUES ($1, $2, $3, $4, $5, $6, $7) RETURNING id"
    values = [@name, @description, @quantity, @buying_cost, @selling_price, @brand_id, @category_id, @id]
    result = SqlRunner.run(sql, values)
    @id = result.first['id']
  end

  def self.all()
    sql = "SELECT * FROM products"
    products = SqlRunner.run(sql)
    result = products.map { |product| Product.new(product) }
    return result
  end

  def update()
    sql = "UPDATE products SET (name, description, quantity, buying_cost, selling_price, brand_id, category_id) = ($1, $2, $3, $4, $5, $6, $7)
    WHERE id = $8"
    values = [@name, @description, @quantity, @buying_cost, @selling_price, @brand_id, @category_id, @id]
    SqlRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE FROM products
    WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.delete_all()
    sql = "DELETE FROM products"
    SqlRunner.run(sql)
  end

  def self.find(id)
    sql = "SELECT * FROM products WHERE id = $1"
    values = [id]
    result = SqlRunner.run(sql, values).first
    product = Product.new(result)
    return result
  end

end
