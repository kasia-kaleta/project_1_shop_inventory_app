require_relative('../db/sql_runner')


class Brand

  attr_reader :id
  attr_accessor :name, :info, :img

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @info = options['info']
    @img = options['img']
  end

  def save()
    sql = "INSERT INTO brands (name, info, img) VALUES ($1, $2, $3) RETURNING id"
    values = [@name, @info, @img]
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
    sql = "UPDATE brands SET (name, info, img) = ($1, $2, $3)
    WHERE id = $4"
    values = [@name, @info, @img, @id]
    SqlRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE FROM brands
    WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.delete_all()
    sql = "DELETE FROM brands"
    SqlRunner.run(sql)
  end

  def self.find(id)
    sql = "SELECT * FROM brands WHERE id = $1"
    values = [id]
    result = SqlRunner.run(sql, values).first
    return Brand.new(result)

  end


end
