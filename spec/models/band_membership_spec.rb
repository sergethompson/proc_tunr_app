require 'spec_helper'

describe BandMembership do 
	describe "given a musician and a band" do
		before do
		@band = Band.create(name: "Metalica")
		@musician = Musician.create(name: "Lars Ulrich")
		end

		describe "when a musician joins a band" do
			before do
			@musician.join(@band)
			end
			it "contains a musician" do
					requirements = {
						band_id: @band.id,
						musician_id: @musician.id
					}
					BandMembership.where(requirements).first.band_id.should == @band.id
			end
		
		it "is created" do
			@band.musicians.should include @musician
		end
	end


	end
	
end