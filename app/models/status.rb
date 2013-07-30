class Status < ActiveRecord::Base
  attr_accessible :description, :name

  validates :name, presence: true

  has_many :fellow_statuses
  has_many :fellows, through: :fellow_statuses

end
