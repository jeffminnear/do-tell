class API::EventsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    application = Application.find_by(url: request.env['HTTP_ORIGIN'])

    if application
      @event = application.events.build(event_params)

      if @event.save
        render json: @event, status: :created
      else
        render json: @event.errors, status: :unprocessable_entity
      end
    else
      render json: "Unregistered application", status: :unprocessable_entity
    end
  end



  private

  def event_params
    params.require(:event).permit(:name)
  end
end
