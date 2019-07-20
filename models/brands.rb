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

  def find(id)
    sql = "SELECT * FROM brands WHERE id = $1"
    values = [id]
    result = SqlRunner.run(sql, values).first
    brand = Brand.new(result)
    return result
  end


end
