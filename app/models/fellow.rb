class Fellow < ActiveRecord::Base
  attr_accessible :created_at, :email, :facebook, :linkedin,
                  :name, :notes, :twitter, :updated_at

  validates :name, presence: true

  has_many :fellow_statuses
  has_many :statuses, through: :fellow_statuses

end
