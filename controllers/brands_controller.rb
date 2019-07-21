require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

require_relative('../models/brands.rb')
require_relative('../models/categories.rb')
require_relative('../models/products.rb')
also_reload('../models/*')

get '/brands' do
  @brands = Brand.all
  erb(:'brands/index')
end

get '/brands/new' do
  erb(:'brands/new')
end

post '/brands' do
  Brand.new(params).save
  redirect to '/brands'
end

get '/brands/:id' do
  @brand = Brand.find(params[:id])
  erb(:'brands/show')
end

get '/brands/:id/edit' do
  @brand = Brand.find(params[:id])
  erb(:'brands/edit')
end

post '/brands/:id/edit' do
  Brand.new(params).update
  redirect to '/brands'
end
