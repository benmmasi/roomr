class RegionsController < ApplicationController
  def index
    @regions = Region.all
    @region = Region.new
  end

  def create
    @region = Region.new(region_params)
    if @region.save
      redirect_to root_path
    else
      @regions = Region.all
      render :index
    end
  end

  def show
    @region = Region.find(params[:id])
    @users = @region.users
    @user = User.find(params[:id])
  end

  private

  def region_params
    params.require(:region).permit(:name)
  end
end
