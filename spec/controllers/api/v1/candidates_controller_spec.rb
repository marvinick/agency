require 'spec_helper'

describe API::V1::CandidatesController do
  describe "GET 'index' " do
    it "returns a successful 200 response" do
     get :index, format: :json
     expect(response).to be_success
    end

    it "returns all the students" do
      candidates = Fabricator(:candidate)
      get :index, format: :json
      expect(candidates).to eq(candidates)
    end
  end

  describe "GET show " do
    it "sets @candidate" do
      candidate = Fabricate(:candidate)
      get :show, id: candidate.id, format: :json
      expect(assigns(:candidate)).to eq(candidate)
    end
  end

  describe "POST 'create' " do
    post :create, candidate: {name: "Marvin", email: "marvin@email.com"}
    candidate = Fabricate(:candidate)
  end
end