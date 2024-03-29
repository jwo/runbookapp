class ApplicationsController < ApplicationController
  before_filter :authenticate_user!
  respond_to :html, :pdf

  def index
    @applications = current_user.applications
  end

  def new
    @application = current_user.applications.build
  end

  def create
    @application = current_user.applications.build(application_params)
    @application.save
    respond_with @application
  end

  def show
    @application = current_user.applications.find(params[:id])

    respond_to do |format|
      format.html
      format.pdf do
        render :pdf => "#{@application.name.parameterize}.pdf",
          layout: 'application'
      end
    end
  end

  def edit
    @application = current_user.applications.find(params[:id])
  end

  def update
    @application = current_user.applications.find(params[:id])
    @application.update_attributes(application_params)
    @application.save
    respond_with @application
  end


  private

  def application_params
    params.require(:application).permit(:name)
  end
end
