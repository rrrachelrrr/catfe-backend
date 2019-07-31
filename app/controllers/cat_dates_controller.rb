class CatDatesController < ApplicationController
  def index
    cat_dates = CatDate.all
    render json: cat_dates
  end

  def show
    cat_date = CatDate.find_by(id: params[:id])
    render json: cat_date
  end

  def feed
    p "help me i dont know how to do this!!!"
    # cat = params[:cat_id]
    found_cat_date = CatDate.find_or_create_by(user_id: current_user.id, cat_id: params[:cat_id])
    render json: found_cat_date
  end

  def found
    render json: feed
  end

private

def feed_params
  params.require(:CatDates).permit(:name, :age, :favorite_food)
end






end
