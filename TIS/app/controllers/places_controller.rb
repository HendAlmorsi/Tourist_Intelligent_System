class PlacesController < ApplicationController
  before_action :load_place, only: [:show, :destroy]

  def create
		@place = Place.new(place_params)
		if @place.save
      #error
		end

    @request = @place.request.create()
    
	end

  def index
    render json: Place.all
  end

	def show
    render json: @place
	end

  def destroy
      @place.destroy
      @place.request.destroy()
  end 

	private

	def place_params
		#params[:question][:user_id] = current_user.id
		params.require(:place).permit(:name, :state, :type, :description, :price)
	end

	def load_place
    @place = Place.where(id: params[:id]).first
    if !@place
      render json: {status: false, message: 'place.not_found'}, status: :not_found
    end
  end

end
