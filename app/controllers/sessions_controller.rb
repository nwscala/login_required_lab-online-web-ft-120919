class SessionsController < ApplicationController
    def create
        if params[:name].blank?
            redirect_to login_path
        else
            session[:name] = params[:name]
        end
    end

    def destroy
        session.delete :name
    end
end
