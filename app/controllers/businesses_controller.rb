class BusinessesController < ApplicationController
   before_action :set_city
   before_action :set_business, only: [:destroy]
  def create
    @business = Business.new comment_attributes
    @city = City.find params[:city_id]
    @business.city = @city
    if @business.save
      redirect_to @city, notice: "Thanks for your business!"
    else
      render "projects/show"
    end
  end

  def comment_attributes
    params.require(:business).permit(:name, :address, :link, :email, :body, :activity_id)
  end

  def destroy
    if @business.destroy
      redirect_to @city, notice: "Answer deleted successfully"
    else
      flash.now[:alert] = "We couldn't delete the answer"
      render "projects/show"
    end
  end

  def set_business
    @business = @city.businesses.find(params[:id])
  end

  def set_city
    @city = City.find params[:city_id]
  end
end
