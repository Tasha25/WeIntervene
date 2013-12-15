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
  attr_accessible :comment, :student_id, :user_id

  has_and_belongs_to_many :infractions
  has_and_belongs_to_many :disciplinary_responses
  has_and_belongs_to_many :guidance_interventions
  belongs_to :user
  belongs_to :student

end
