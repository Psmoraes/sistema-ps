class SessionsController < ApplicationController
  def new
  end
  
  def create
    paciente = Paciente.find_by(email: params[:session][:email].downcase)
    if paciente && paciente.authenticate(params[:session][:password])
      log_in paciente
      redirect_back_or paciente
    else
      flash.now[:error] = 'Invalid email/password combination' # Not quite right!
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
