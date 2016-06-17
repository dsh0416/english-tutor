#\ -s puma
require 'bundler'
Bundler.require

require './route/status_route'

Faye::WebSocket.load_adapter('puma')

run Rack::URLMap.new('/' => StatusRoute)