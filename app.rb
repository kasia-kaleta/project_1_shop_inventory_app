require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controllers/brands_controller')
require_relative('controllers/categories_controller')
require_relative('controllers/products_controller')

get '/' do
  @products = Product.all
  @brands = Brand.all
  erb(:index)
end

post 'inventory' do
  @brands = Brand.all
  @category = Category.all
  # @product = Product.find(params[:brand_id,:category_id])
  erd(:index)
end
