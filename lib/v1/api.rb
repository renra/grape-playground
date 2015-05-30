require 'grape'

module V1
  class API < Grape::API
    format :json
    version :v1, using: :accept_version_header

    namespace :resources do
      desc 'Returns a resource by id'
      params do
        requires :id, type: Integer, desc: 'Resource id'
      end
      route_param :id do
        get do
          'V1: Giving you a resource with id: ' + params[:id].to_s
        end

        put do
          'V1: Updated a resource with id: ' + params[:id].to_s
        end

        delete do
          'V1: Deleted a resource with id: ' + params[:id].to_s
        end
      end

      get do
        'V1: Listing resources'
      end

      post do
        'V1: Creating a resource based on: ' + params.inspect
      end
    end
  end
end
