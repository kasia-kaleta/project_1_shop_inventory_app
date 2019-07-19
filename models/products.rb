class Product

  attr_reader :id
  attr_accessor :name, :description, :quantity, :buying_price, :selling_price, :brand_id, :category_id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @description = options['description']
    @quantity = options['quantity'].to_i
    @buying_price = options['buying_price'].to_f
    @selling_price = options['selling_price'].to_f
    @brand_id = options['brand_id']
    @category_id = options['category_id']
  end

end
