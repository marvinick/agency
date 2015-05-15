class CandidateSkill < ActiveRecord::Base
  belongs_to :candidate
  belongs_to :skill
end