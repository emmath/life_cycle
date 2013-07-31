class Status < ActiveRecord::Base
  attr_accessible :description, :name

  validates :name, presence: true

  has_many :fellowstatuses
  has_many :fellows, through: :fellowstatuses

end
