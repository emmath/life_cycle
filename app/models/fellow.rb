class Fellow < ActiveRecord::Base
  attr_accessible :created_at, :email, :facebook, :linkedin,
                  :name, :notes, :twitter, :updated_at

  validates :name, presence: true

end
