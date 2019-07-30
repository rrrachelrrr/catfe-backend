class AuthController < ApplicationController


  def create
    user = User.find_by(username:params[:username])
    is_authenticated = user.authenticate(params[:password]) if user

    if is_authenticated
      payload= {user_id: user.id}
      encoded_token = JWT.encode(payload, 'meow', "HS256")
      render json: {token: encoded_token}
    else
      render json: {errors: ["wrong username or password!"], status: :unprocessable_entity}
    end
  end

  def show
    render json: current_user
  end



end
