# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)
require 'middleman'
ENV["MM_ROOT"] = "#{Rails.root}/public/middleman"
rack_app = Middleman.server
run Rack::URLMap.new "/middleman" => rack_app, "/" => Rails.application