require './spec/spec_helper'
require './route/status_route'

RSpec.describe StatusRoute do

  def app
    StatusRoute
  end

  describe 'GET / ' do
    it 'should return a hello world' do
      get '/'
      expect(last_response.body).to eq({message: 'running'}.to_json)
      expect(last_response.status).to eq(200)
    end
  end

end