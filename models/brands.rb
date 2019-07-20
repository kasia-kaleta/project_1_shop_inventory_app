require_relative('../db/sql_runner')


class Brand

  attr_reader :id
  attr_accessor :name, :info

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @info = options['info']
  end

  def save()
    sql = "INSERT INTO brands (name, info) VALUES ($1, $2) RETURNING id"
    values = [@name, @info, @id]
    result = SqlRunner.run(sql, values)
    @id = result.first['id']
  end

  def self.all()
    sql = "SELECT * FROM brands"
    brands = SqlRunner.run(sql)
    result = brands.map { |brand| Brand.new(brand) }
    return result
  end

  def update()
    sql = "UPDATE brands SET (name, info) = ($1, $2)
    WHERE id = $3"
    values = [@name, @info, @id]
    SqlRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE FROM brands
    WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end




  def self.find(id)
    sql = "SELECT * FROM brands WHERE id = $1"
    values = [id]
    result = SqlRunner.run(sql, values).first
    brand = Brand.new(result)
    return result
  end


end
