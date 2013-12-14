# == Schema Information
#
# Table name: incident_logs
#
#  id         :integer          not null, primary key
#  student_id :integer
#  user_id    :integer
#  comment    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class IncidentLog < ActiveRecord::Base

end
