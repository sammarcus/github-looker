require 'sinatra'
require "sinatra/reloader"
require "require_all"

require_all 'app/'

also_reload './index.erb'
also_reload './user_form.rb'
