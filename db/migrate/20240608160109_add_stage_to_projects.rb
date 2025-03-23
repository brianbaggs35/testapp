class AddStageToProjects < ActiveRecord::Migration[7.1]
  def change
    add_column :projects, :stage, :integer
  end
end
