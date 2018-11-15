require 'rails_helper'

RSpec.describe PagesController, type: :controller do
  describe '#index' do
    def do_request
      get :index
    end

    before { do_request }

    it { expect(response).to be_successful }
  end

end
