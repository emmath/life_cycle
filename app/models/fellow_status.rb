class FellowStatus < ActiveRecord::Base
  belongs_to :fellow_id
  belongs_to :status_id

end
