class ApplicationController < ActionController::API

  def encoded_token
    payload= {user_id: user.id}
    JWT.encode(payload, secret, 'HS256')
  end

  def token
    request.headers["Authorization"]
  end

  def decoded_token
    JWT.decode(token, 'meow', true, {algorithm: 'HS256'})
  end

  def current_user
    user_id = decoded_token[0]['user_id']
    User.find(user_id)
  end

end
