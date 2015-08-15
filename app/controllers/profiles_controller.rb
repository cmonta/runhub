class ProfilesController < ApplicationController
	before_action :set_profile, only: [:show, :edit, :update, :destroy]

	before_action :authenticate_user!, only: [:edit, :update, :destroy]
 	before_filter :correct_role, only: [:edit, :update, :destroy]

	def new
	end

	def edit
	end

	def create
	end

	def update
		if @profile.update(profile_params)
        redirect_to @profile, notice: 'Profile was successfully updated.'
      end
	end

	private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

	# Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:locality, :level, :description, :avatar)
    end

    def correct_role
      redirect_to(users_path) unless current_user.admin? || (current_user == @profile.user)
    end
end
