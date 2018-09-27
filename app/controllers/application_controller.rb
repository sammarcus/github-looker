require 'sinatra'
require "sinatra/reloader"
require 'pry'
require 'dotenv/load'


class ApplicationController < Sinatra::Base
  set :root, File.dirname(__FILE__)
  set :views, Proc.new { File.join(root, "../views/") }
  set :public_folder, '../public'
  set :static, 'true'
  # set :show_exceptions, :after_handler

  get '/' do
    erb :index
  end

  post '/result' do
    username = params['username']
    @chunk = User.runner(username)
    erb :result
  end

  not_found do
    'You are nowhere. Go back?'
  end

end
