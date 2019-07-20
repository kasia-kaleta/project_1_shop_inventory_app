require_relative('../db/sql_runner')


class Category

  attr_reader :id
  attr_accessor :name

  def initialize(options)
    @id = options['id'].to_i if options
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO brands (name) VALUES ($1) RETURNING id"
    values = [@name, @id]
    result = SqlRunner.run(sql, values)
    @id = result.first['id']
  end

end
