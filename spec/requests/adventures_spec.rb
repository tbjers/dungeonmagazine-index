require 'rails_helper'

RSpec.describe "Adventures", type: :request do
  before(:each) do
    @issue = FactoryGirl.create(:issue)
  end

  describe "GET /adventures" do
    it "works! (now write some real specs)" do
      get issue_adventures_path(@issue)
      expect(response).to have_http_status(200)
    end
  end
end
