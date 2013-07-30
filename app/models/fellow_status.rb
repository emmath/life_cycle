class FellowStatus < ActiveRecord::Base
  belongs_to :fellow
  belongs_to :status

end
