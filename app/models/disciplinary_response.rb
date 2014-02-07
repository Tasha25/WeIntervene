class DisciplinaryResponse < ActiveRecord::Base
  attr_accessible :code, :description

   has_and_belongs_to_many :incident_logs

end
