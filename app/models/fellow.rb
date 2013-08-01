class Fellow < ActiveRecord::Base
  attr_accessible :created_at, :email, :facebook, :linkedin,
                  :name, :notes, :twitter, :updated_at

  validates :name, presence: true

  has_many :fellowstatuses, dependent: :destroy
  has_many :statuses, through: :fellowstatuses

end
