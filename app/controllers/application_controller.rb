require 'sinatra'
require "sinatra/reloader"
require 'pry'
# binding.pry


class ApplicationController < Sinatra::Base
set :root, File.dirname(__FILE__)
set :views, Proc.new { File.join(root, "../views/") }
# set :public_folder, '../public'
set :static, 'true'

get '/' do
    @title = 'Lookup'
  erb :index
end

post '/result' do
    username = params['username']
    @chunk = User.runner(username)
    erb :result
  end

end
