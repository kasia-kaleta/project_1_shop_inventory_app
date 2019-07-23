require( 'sinatra' )
require( 'sinatra/contrib/all' )
require('pry-byebug')
require_relative('controllers/brands_controller')
require_relative('controllers/categories_controller')
require_relative('controllers/products_controller')


get '/' do
  @products = Product.all
  @brands = Brand.all
  @categories = Category.all
  erb(:index)
end

post '/brands/filter' do
  @brands = Brand.all
  @products = Product.filter_by_brand(params['brand_id'])
  erb(:filter_brand)
end

post '/categories/filter' do
  @categories = Category.all
  @products = Product.filter_by_category(params['category_id'])
  erb(:filter_category)
end
