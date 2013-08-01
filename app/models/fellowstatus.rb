class Fellowstatus < ActiveRecord::Base
  attr_accessible :fellow_id, :status_id

  belongs_to :fellow
  belongs_to :status

  #after_create :close_old

  #scope :for, lambda do |fellow|

  #def close_old
    #(Fellowstatus.for(fellow).where(closed_at: nil) - [self]).each |fellowstatus| do
    #  fellowstatus.update_attribute(:closed_at, Time.current)
   # end
  #end
end
