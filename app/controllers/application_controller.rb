class ApplicationController < ActionController::API
  def encode_token(payload, exp = 7.days.from_now)
    payload[:exp] = exp.to_i
    JWT.encode(payload, 'mysecret')
  end

  def decode_token(token)
    JWT.decode(token, 'mysecret')
  end
end
