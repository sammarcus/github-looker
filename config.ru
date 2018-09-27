require 'sinatra'
require_relative 'app/config/environment'

Bundler.require

run ApplicationController
