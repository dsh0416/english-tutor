class DicRoute < Sinatra::Base
  get '/list' do
    content_type :json
    DicController.list.to_json
  end
end