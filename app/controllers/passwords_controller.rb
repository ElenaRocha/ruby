class PasswordsController < ApplicationController
    before_action :require_user_logged_in!

    def edit
    end

    def update
        if Current.user.update(password_params)
            redirect_to root_path, notice: "Password updated"
        else
            return :edit            
        end
    end

    private

    def password_params
        params.require(:user).permit(:password, :passwordconfirmation)
    end
end