class Musician < ActiveRecord::Base
  attr_accessible :name, :musician_id
  has_many :bands, through: :band_memberships
  has_many :band_memberships


  def join(band)
  	BandMembership.create({
  		musician_id: self.id,
  		band_id: band.id
  		})

  end
end
