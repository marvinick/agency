class CandidatesController < ApplicationController
  before_action :set_candidate, only: [:show]

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

  def show

  end

  private

  def set_candidate
    @candidate = Candidate.find(params[:id])
  end

  def candidate_params
    params.require(:candidate).permit(:name, :email)
  end
end