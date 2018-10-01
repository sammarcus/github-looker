class ApplicationController < Sinatra::Base
  set :root, File.dirname(__FILE__)
  set :views, Proc.new { File.join(root, "../views/") }
  set :static, true
  set :show_exceptions, :after_handler

  get '/' do
    @title = "GH User Lookup Start"
    erb :index
  end

  post '/result' do
    @title = "#{params['username']} information"
    username = params['username']
    @chunk = User.runner(username)
    erb :result
  end

  not_found do
    'You are nowhere. Go back?'
  end

end
