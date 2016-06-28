#\ -s puma
require 'bundler'
Bundler.require

require './route/status_route'
require './route/vue_route'
require './route/dic_route'

require './controller/dic_controller'

Faye::WebSocket.load_adapter('puma')

use Rack::Static,
    :urls => %w'/app /js /css /img /font /audio',
    :root => 'public'

run Rack::URLMap.new('/status' => StatusRoute,
                     '/dic' => DicRoute,
                     '/' => VueRoute)