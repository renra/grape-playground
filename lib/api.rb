require 'grape'
require_relative './v1/api'
require_relative './v2/api'

class API < Grape::API
  mount V1::API
  mount V2::API
end
