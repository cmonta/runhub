class RegistrationController < ApplicationController
before_filter :find_race

  def register
  	@race.users << current_user
  	redirect_to races_path, notice: 'Succesfully registered'
  end

  def delete
  	@race.users.delete(current_user)
  	redirect_to races_path, notice: 'Succesfully unregistered'
  end

  private
  def find_race
  	@race = Race.find(params[:race_id])
  end
end
