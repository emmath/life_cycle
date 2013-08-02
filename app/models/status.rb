class Status < ActiveRecord::Base
  attr_accessible :description, :name, :fellowstatus_id

  validates :name, presence: true

  has_many :fellowstatuses, dependent: :destroy
  has_many :fellows, through: :fellowstatuses

end
