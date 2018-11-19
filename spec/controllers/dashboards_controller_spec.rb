require 'rails_helper'

RSpec.describe DashboardsController, type: :controller do

  before { sign_in create(:user, :confirmed) }

  describe '#index' do
    def do_request
      get :index
    end

    before { do_request }

    it { expect(response).to be_successful }
  end

end
