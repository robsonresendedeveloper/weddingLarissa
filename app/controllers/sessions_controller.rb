class SessionsController < ApplicationController
	def index
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(session_params)
		if @user.username == "robson.resende" && @user.password == "robsonadmin"
			session[:user_id] = 1
			flash[:success] = "Você está logado no sistema"
			redirect_to confirmations_path
		else
			flash.now[:danger] = "Ocorreu algum erro no seu login"
			render 'new'
		end
	end
	
	def destroy
		session[:user_id] = nil
		flash[:success] = "Você fez o logout"
		redirect_to root_path
	end

	private
	def session_params
		params.require(:session).permit(:username, :password)
	end
end