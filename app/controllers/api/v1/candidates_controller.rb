module API::V1
  class CandidatesController < ApplicationController

    def index
      @candidates = Candidate.all
      render json: @candidates
    end

    def show
      @candidate = Candidate.find(params[:id])
      render json: @candidate
    end

    def create
    end
  end
end