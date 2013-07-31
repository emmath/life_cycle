class Fellowstatus < ActiveRecord::Base
  attr_accessible :fellow_id, :status_id

  belongs_to :fellow
  belongs_to :status

  #before_save :set_change_time

  #def set_change_time
   # if self.update?
   # self.time = Time.now
   # end
  #end

end
