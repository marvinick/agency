require "spec_helper"

describe SkillsController do
  describe "GET index" do
    it "sets @skills" do
      skill = Fabricate(:skill)
      get :index
      expect(assigns(:skills)).to eq([skill])
    end

    it "renders the index template" do
      get :index
      response.should render_template :index
    end
  end

  describe "GET new" do
    it "sets @skill" do
      get :new
      assigns(:skill).should be_new_record
      assigns(:skill).should be_instance_of(Skill)
    end

    it "renders the new template" do
      get :new
      response.should render_template :new
    end
  end

  describe "POST create" do
    it "creates @Skill" do
      skill = Fabricate.build(:skill)
      post :create, skill: {name: "rails"}

    end

    it "redirects to root_path after create" do
      post :create, skill: {name: "Skill" }
      response.should redirect_to root_path
    end
  end
end