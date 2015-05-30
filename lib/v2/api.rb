require 'grape'

module V2
  class API < Grape::API
    format :json
    version :v2, using: :accept_version_header

    namespace :resources do
      desc 'Returns a resource by id'
      params do
        requires :id, type: Integer, desc: 'Resource id'
      end
      route_param :id do
        get do
          'V2: Giving you a resource with id: ' + params[:id].to_s
        end

        put do
          'V2: Updated a resource with id: ' + params[:id].to_s
        end

        delete do
          'V2: Deleted a resource with id: ' + params[:id].to_s
        end
      end

      get do
        'V2: Listing resources'
      end

      post do
        'V2: Creating a resource based on: ' + params.inspect
      end
    end
  end
end
