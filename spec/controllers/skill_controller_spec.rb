require "spec_helper"

describe SkillsController do
  describe "GET index" do
    it "sets @skills" do
      candidate = Fabricate(:candidate)
      skill = Skill.create
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

end