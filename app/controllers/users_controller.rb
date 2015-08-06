class UsersController < ApplicationController

	def index
		#@users = User.all
		@users = User.all_except(current_user)
	end

	def show
		@user = User.find(params[:id])
	end

	def follow
		@user = User.find(params[:user])
		current_user.follow(@user)
		redirect_to users_path
	end

	def list_followers
		@user = User.find(params[:user])
		@followers = @user.user_followers
	end

	def list_followees
		@user = User.find(params[:user])
		@followees = @user.following_users
	end
	
end
