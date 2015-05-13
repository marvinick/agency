class AddCandidateIdToSkills < ActiveRecord::Migration
  def change
    add_column :skills, :candidate_id, :integer
  end
end
