class RegistrationsController < Devise::RegistrationsController
	private

  def sign_up_params
    params.require(:user).permit(:nickname, :email, :password, :password_confirmation, profile_attributes: [:level, :id])
  end

  def account_update_params
    params.require(:user).permit(:nickname, :email, :password, :password_confirmation, :current_password, profile_attributes: [:level, :id])
  end
end
