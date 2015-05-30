require 'grape'
require 'pry'

require_relative './v1/api'
require_relative './v2/api'

class API < Grape::API
  get :hello do
    {message: 'Hello world!'}
  end

  mount V1::API
  mount V2::API
end
