require './spec/spec_helper'
require './route/vue_route'

RSpec.describe VueRoute do

  def app
    VueRoute
  end

  describe 'GET / ' do
    it 'should redirect as a 302 request' do
      get '/'
      expect(last_response.status).to eq(302)
    end

    it 'should redirect to index.html' do
      get '/'
      expect(last_response.location).to eq('http://example.org/app/index.html')
    end
  end

end