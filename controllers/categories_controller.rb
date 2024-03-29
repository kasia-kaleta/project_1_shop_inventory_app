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
  @category = Category.find(params[:id])
  erb(:'categories/show')
end

get '/categories/:id/edit' do
  @category = Category.find(params[:id])
  erb(:'categories/edit')
end

post '/categories/:id/edit' do
  Category.new(params).update
  redirect to '/categories'
end

post '/categories/:id/delete' do
  Category.find(params[:id]).delete
  redirect to '/categories'
end
