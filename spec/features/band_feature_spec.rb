require 'spec_helper'

describe BandsController do 
	describe "Given a band" do
		before do
			@band = "Metallica"
		end
		describe "Starting on the new band page" do
			before do
				visit new_band_path
			end
			it "makes a new band from a form" do
				fill_in :name, with: @band
				click_button 'submit'
				current_path.should == bands_path
				page.should have_content(@band)
			end
			describe "can be seen on a show page" do
				before do
					@kurt = Musician.create name: "Kurt Cobain"
					@nirvana = Band.create name: "Nirvana"
					@kurt.join(@nirvana)
					visit band_path(@nirvana)
				end
				it "goes to a show page and shows a band" do
					page.should have_content(@nirvana.name)
					page.should have_content(@kurt.name)
					
				end
			end

		end
	end
end