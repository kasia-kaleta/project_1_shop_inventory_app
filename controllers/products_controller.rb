require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

require_relative('../models/brands.rb')
require_relative('../models/categories.rb')
require_relative('../models/products.rb')
also_reload('../models/*')

get '/products' do
  @products = Product.all
  erb(:'products/index')
end

get '/products/new' do
  @categories = Category.all
  @brands = Brand.all
  erb(:'products/new')
end

post '/products' do
  Product.new(params).save
  redirect to '/products'
end

get '/products/:id' do
  @product = Product.find(params[:id])
  erb(:'products/show')
end
