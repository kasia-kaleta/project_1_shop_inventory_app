require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

require_relative('../models/brands.rb')
require_relative('../models/categories.rb')
require_relative('../models/products.rb')
also_reload('../models/*')

get '/brands' do
  @brands = Brand.all
  erb(:brand_index)
end
