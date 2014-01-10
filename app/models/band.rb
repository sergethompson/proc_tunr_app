class Band < ActiveRecord::Base
	has_many :musicians, through: :band_memberships
	has_many :band_memberships
  attr_accessible :name, :band_id


end
