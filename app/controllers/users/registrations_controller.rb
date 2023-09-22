# app/controllers/users/registrations_controller.rb

class Users::RegistrationsController < Devise::RegistrationsController
  before_action :restrict_access, only: [:new, :create]
  skip_before_action :require_no_authentication, only: [:new, :create]

  private

  def restrict_access
    unless current_user&.admin?
      redirect_to root_path, alert: "Solo Esteban puede crear usuarios."
    end
  end
end
