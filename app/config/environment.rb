require 'sinatra'
require "sinatra/reloader"
require "sinatra/reloader"
require "require_all"

require_all 'controllers'
require_all 'models'
require_all 'views'

also_reload './index.erb'
also_reload './user_form.rb'

# configure :production do
#   enable :reloader
# end
