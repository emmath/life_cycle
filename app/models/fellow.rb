class Fellow < ActiveRecord::Base
  attr_accessible :created_at, :email, :name, :notes, :updated_at
end
