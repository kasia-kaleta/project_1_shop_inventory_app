require('sinatra')
require('sinatra/contrib/all')
require_relative('models/brands')
require_relative('models/categories')
require_relative('models/products')
also_reload('./models/*')

get '/brand_index' do
  @brands = Brand.all
  erb(:brand_index)
end
