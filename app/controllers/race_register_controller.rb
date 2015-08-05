class RaceRegisterController < ApplicationController
	before_filter :find_race, only: [:register, :delete ]

  def register
  	@race.users << current_user
  	redirect_to races_path, notice: 'Succesfully registered'
  end

  def delete
  	@race.users.delete(current_user)
  	redirect_to races_path, notice: 'Succesfully unregistered'
  end

  def list_races
    @user = User.find(params[:user])
    @races = @user.races
  end

  def list_users
    @race = Race.find(params[:race])
    @users = @race.users
  end

  private
  def find_race
  	@race = Race.find(params[:race_id])
  end
end
