class SetDefaultsForTasks < ActiveRecord::Migration[6.0]
  def change
  	change_column_null :tasks, :title, false
  	change_column_null :tasks, :deadline_at, false
  	change_column_default :tasks, :priority, 2
  	change_column_default :tasks, :completed, false
  	change_column_null :tasks, :user_id, false
  end
end
