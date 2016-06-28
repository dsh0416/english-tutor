class VueRoute < Sinatra::Base
  get '/' do
    redirect '/app/index.html'
  end
end