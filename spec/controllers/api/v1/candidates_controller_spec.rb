require 'spec_helper'

describe API::V1::CandidatesController do
  describe "GET 'index' " do
    it "returns a successful 200 response" do
     get :index, format: :json
     expect(response).to be_success
    end

    it "returns all the candidates" do
      candidates = Fabricator(:candidate)
      get :index, format: :json
      expect(candidates).to eq(candidates)
    end
  end
end