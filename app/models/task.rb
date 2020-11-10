# == Schema Information
#
# Table name: tasks
#
#  id          :integer          not null, primary key
#  title       :string
#  deadline_at :date
#  priority    :integer
#  completed   :boolean
#  user_id     :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Task < ApplicationRecord
  belongs_to :user

  # Converts int values of priorty into appropriate strings
  def priority_string
    case priority
    when 0
      "high"
    when 1
      "medium"
    when 2
      "low"
    else
      "invalid"
    end
  end
end
