class RegisteredApplicationsController < ApplicationController
  def index
    @applications = current_user.applications
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
