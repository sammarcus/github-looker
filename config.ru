require 'sinatra'
require_relative 'app/config/environment'

Bundler.require

Bundler.require

run ApplicationController
# set :root, File.dirname(__FILE__)
