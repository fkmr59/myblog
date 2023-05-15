# frozen_string_literal: true

module Admins
  class RegistrationsController < Devise::RegistrationsController
    before_action :one_user_registered?, only: %i[new create]

    protected

    def one_user_registered?
      if Admin.count == 1 && admin_signed_in?
        redirect_to root_path
      else
        if Admin.count == 1
          redirect_to new_admin_session_path
        end
      end
    end
  end
end
