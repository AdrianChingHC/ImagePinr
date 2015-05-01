class PinsController < ApplicationController
	def index
		
	end

	def new
		@pin = Pins.new
	end

	def create
		@pin = Pins.new(pin_params)
	end

	private

	def pin_params
		params.require(:pin).permit(:title, :description)
	end
end
