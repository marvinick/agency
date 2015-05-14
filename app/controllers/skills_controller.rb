class SkillsController < ApplicationController
  def index
    @skills = Skill.all
  end

  def new
  end

end