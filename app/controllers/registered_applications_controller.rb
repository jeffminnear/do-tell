class RegisteredApplicationsController < ApplicationController
  def index
    @applications = current_user.applications
  end

  def show
    begin
      @application = current_user.applications.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      @application = nil
    end
  end

  def new
    @application = Application.new
  end

  def create
    @application = current_user.applications.build(application_params)

    if @application.save
      flash[:notice] = "Your new application has been registered."
      redirect_to applications_path
    else
      flash[:error] = "There was an error registering your application. Please try again."
      render :new
    end
  end

  def destroy
  end


  private

  def application_params
    params.require(:application).permit(:name, :url)
  end
end
