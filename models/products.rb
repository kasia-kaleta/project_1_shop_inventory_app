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
    sql = "INSERT INTO categories (name, description, quantity, buying_cost, selling_price, brand_id, category_id)
    VALUES ($1, $2, $3, $4, $5, $6, $7) RETURNING id"
    values = [@name, @description, @quantity, @buying_cost, @selling_price, @brand_id, @category_id, @id]
    result = SqlRunner.run(sql, values)
    @id = result.first['id']
  end

end
