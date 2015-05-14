require "spec_helper"

describe CandidatesController do
  describe "GET index" do
    it "sets @candidates" do
      candidate = Candidate.create
      get :index
      expect(assigns(:candidates)).to eq([candidate])
    end

    it "renders the index template" do
      get :index
      response.should render_template :index
    end
  end

  describe "GET new" do
    it "sets @candidate" do
      get :new
      assigns(:candidate).should be_new_record
      assigns(:candidate).should be_instance_of(Candidate)
    end

    it "renders the new template" do
      get :new
      response.should render_template :new
    end
  end

  describe "POST create" do
    it "creates @Candidate" do
      post :create, candidate: {name: "Marvin", email: "marvin@email.com"}
      Candidate.first.name.should == "Marvin"
      Candidate.first.email.should == "marvin@email.com"
    end

    it "redirects to root_path after create" do
      post :create, candidate: {name: "Marvin", email: "marvin@email.com"}
      response.should redirect_to root_path
    end
  end

  describe "GET Show" do
    it "sets @candidate" do
      candidate = Fabricate(:candidate)
      get :show, id: candidate.id
      expect(assigns(:candidate)).to eq(candidate)
    end
  end

end