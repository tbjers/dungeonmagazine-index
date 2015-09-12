require 'rails_helper'
require 'faker'

RSpec.describe Issue, type: :model do
  it 'has a valid factory' do
    expect(FactoryGirl.create(:issue)).to be_valid
  end
end
