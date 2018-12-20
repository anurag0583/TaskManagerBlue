class AddDeadlineToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :deadline, :datetime
    add_column :projects, :priority, :string
    add_column :projects, :status, :string
    add_column :projects, :total_hours, :string
  end
end
