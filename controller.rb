require('sinatra')
require('sinatra/contrib/all')
require_relative('models/brands')
require_relative('models/categories')
require_relative('models/products')
also_reload('./models/*')

get '/brands' do
  @brands = Brand.all
  erb(:brand_index)
end

get '/categories' do
  @categories = Category.all
  erb(:category_index)
end

get '/products' do
  @products = Product.all
  erb(:products_index)
end
