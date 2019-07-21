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

get '/products/:id/edit' do
  @product = Product.find(params[:id])
  @brands = Brand.all
  @categories = Category.all
  erb(:'products/edit')
end

post 'products/:id/edit' do
  Product.new(params).update
  redirect to '/products'
end

post 'products/:id/delete' do
  Product.delete(params[:id])
  redirect to '/products'
end
