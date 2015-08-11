class UsersController < ApplicationController
	before_action :set_user, only: [:show, :follow, :unfollow, :list_followers, :list_followees]

	def index
		#@users = User.all
		@users = User.all_except(current_user)
	end

	def show
	end

	def follow
		current_user.follow(@user)
		redirect_to users_path
	end

	def unfollow
		current_user.stop_following(@user)
		redirect_to users_path
	end

	def list_followers
		@followers = @user.user_followers
	end

	def list_followees
		@followees = @user.following_users
	end

	private
	def set_user
		@user = User.find(params[:user])
	end
	
end
