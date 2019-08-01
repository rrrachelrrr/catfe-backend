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

  def update
    cat_date =C atDate.find_by(id: params[:id])
    cat_date.update(cat_date_params)
    render json: cat_date
  end


private

# def feed_params
#   params.require(:CatDates).permit(:name, :age, :affectionate)
# end

  def cat_date_params
    params.permit(:affectionate)
  end

end
