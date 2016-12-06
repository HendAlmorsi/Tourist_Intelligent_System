class RequestsController < ApplicationController

	before_action :load_request, only: [:destroy , :accept , :reject]

	def index
    render json: Request.all
  end

  def destroy
      @request.destroy
  end 

	def accept
		@request = Request.find (params[:id])
		@request.destroy
		@request.place.update(state: "accepted")
		#update place database
	end

	def reject
		@request = Request.find (params[:id])
		@request.destroy
		@request.place.update(state: "rejected")
		
		#update place database
	end

	private 
	def load_request
    @request = Request.where(id: params[:id]).first
    if !request
      render json: {status: false, message: I18n.t('request.not_found')}, status: :not_found
    end
  end


end
