class MainController < ApplicationController
    def index
        flash[:notice] = "Longged in successfully"
        flash[:alert] = "Invalid email or password"
    end
end