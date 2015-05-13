class CandidatesController < ApplicationController
  def index
    @candidates = Candidate.all
  end

  def new
    @candidate = Candidate.new
  end

  def create
    @candidate = Candidate.new(candidate_params)
    @candidate.save
    redirect_to root_path
  end

  private
  def candidate_params
    params.require(:candidate).permit(:name, :email)
  end
end