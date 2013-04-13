class PagesController < ApplicationController

  before_filter :authenticate_user!
  before_filter :find_application
  respond_to :html, :json

  def new
    @page = @application.pages.build
  end

  def create
    @page = @application.pages.build(page_params)
    if @page.save
      redirect_to @application
    else
      render :new
    end
  end

  def show
    @page = @application.pages.find(params[:id])
  end

  def update
    @page = @application.pages.find(params[:id])
    @page.update_attributes(page_params)
    respond_with @page
  end

  private
  def find_application
    @application = current_user.applications.find(params[:application_id])
  end

  def page_params
    params.require(:page).permit(:image, :remote_image_url, :title, :description, :sidebar, :footer)
  end
end
