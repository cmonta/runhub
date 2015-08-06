class ProfilesController < ApplicationController
	before_action :set_profile, only: [:show, :edit, :update, :destroy]


	def new
	end

	def edit
	end

	def create
	end

	def update
		if @profile.update(profile_params)
        redirect_to @profile, notice: 'Race was successfully updated.'
      end
	end

	private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

	# Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:city, :level, :description)
    end
end
