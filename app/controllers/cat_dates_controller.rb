class CatDatesController < ApplicationController
  def index
    cat_dates = CatDate.all
    render json: cat_dates
  end

  def show
    cat_date = CatDate.find_by(id: params[:id])
    render json: cat_date
  end
end
