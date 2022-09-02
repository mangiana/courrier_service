class Users::SessionsController < Devise::SessionsController
    def create
        resource = warden.authenticate(auth_options)
        if resource.present?
          redirect_to home_path, success: "Signed in successfully."
        else
          redirect_to users_sign_in_path, danger: "Email or Password is invalid"
        end
    end
end