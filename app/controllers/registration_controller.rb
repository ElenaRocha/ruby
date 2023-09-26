class RegistrationController < ApplicationController
    def new
        @user = User.new
    end

    def create
        #params: Parameters => {"authenticity_token"=>"[FILTERED]", "user"=>{"email"=>"elena@gmail.com", "password"=>"[FILTERED]", "password_confirmation"=>"[FILTERED]"}, "commit"=>"Sign up"}
        #render plain: params[:user] => {"email"=>"elena@gmail.com", "password"=>"+3>.Map4t$Q4V%H", "password_confirmation"=>"+3>.Map4t$Q4V%H"}
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to root_path, notice: "Successfully created account"
        else
            render :new
        end
    end

    private
    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation)
    end
end