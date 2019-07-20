require_relative('../db/sql_runner')


class Category

  attr_reader :id
  attr_accessor :name

  def initialize(options)
    @id = options['id'].to_i if options
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO categories (name) VALUES ($1) RETURNING id"
    values = [@name]
    result = SqlRunner.run(sql, values)
    @id = result.first['id']
  end

  def self.all()
    sql = "SELECT * FROM categories"
    categories = SqlRunner.run(sql)
    result = categories.map { |category| Category.new(category) }
    return result
  end

  def update()
    sql = "UPDATE categories SET (name) = ($1)
    WHERE id = $2"
    values = [@name, @id]
    SqlRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE FROM categories
    WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.delete_all()
    sql = "DELETE FROM categories"
    SqlRunner.run(sql)
  end

  def self.find(id)
    sql = "SELECT * FROM categories WHERE id = $1"
    values = [id]
    result = SqlRunner.run(sql, values).first
    return Category.new(result)

  end

end
