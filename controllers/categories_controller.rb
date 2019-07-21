require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

require_relative('../models/brands.rb')
require_relative('../models/categories.rb')
require_relative('../models/products.rb')
also_reload('../models/*')

get '/categories' do
  @categories = Category.all
  erb(:'categories/index')
end

get '/categories/new' do
  erb(:'categories/new')
end

post '/categories' do
  Category.new(params).save
  redirect to '/categories'
end

get '/categories/:id' do
  @category = Brand.find(params[:id])
  erb(:'categories/show')
end
