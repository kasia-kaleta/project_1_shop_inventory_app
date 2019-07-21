require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controllers/brands_controller')
require_relative('controllers/categories_controller')
require_relative('controllers/products_controller')

get '/' do
  erb( :index )
end
