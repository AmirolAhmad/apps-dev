require 'rails_helper'

RSpec.describe State, type: :model do
  it "has a valid user factory" do
    expect(FactoryBot.build(:state)).to be_valid
  end
end
