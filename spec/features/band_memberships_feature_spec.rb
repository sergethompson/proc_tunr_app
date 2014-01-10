require 'spec_helper'

describe "creating a band membership" do 
	describe "starting on a band membership page" do
		before do
		@kurt = Musician.create name: "Kurt Cobain"
		@nirvana = Band.create name: "Nirvana"
		visit new_band_membership_path
		end
		it "can create a band membership" do
			select @kurt.name, {:from => 'musician_id'}
	  	select @nirvana.name, {:from => 'band_id'}

	  	click_button 'submit'

	  	@kurt.bands.should include @nirvana
		end
	end
	
end