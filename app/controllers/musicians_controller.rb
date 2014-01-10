class MusiciansController < ApplicationController



	def new

	end

	def create
		name = params[:name]
		Musician.create(name: name)

		redirect_to musicians_path
	end

	def index
		@musicians = Musician.all

	end

	def show
		@musician = Musician.find(params[:id])

	end

end