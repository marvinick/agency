class AddSkillIdToCandidates < ActiveRecord::Migration
  def change
    add_column :candidates, :skill_id, :integer
  end
end
