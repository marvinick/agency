class CandidatesController < ApplicationController

  def index
    @candidates = Candidate.all
  end

  def new
    @candidate = Candidate.new
  end

  def create
    @candidate = Candidate.new(candidate_params)
    if @candidate.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @candidate = Candidate.find(params[:id])
  end

  private

  def candidate_params
    params.require(:candidate).permit(:name, :email, skill_ids: [])
  end
end