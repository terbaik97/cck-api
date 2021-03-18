module Api
  module V1
    class AppConfigsController < ApplicationController
      skip_before_action :authorize_request, only: [:initial]

      def initial 
        #This block is needed. This block is so that we can decide to pass the requester profile
        #  to the frontend immediately or not 
        if request.headers["Authorization"].present?
          authorize_request
        end 

        json_response(
          data: Serializers::AppConfig::Initial.hash(@current_user),
          message: "Successfully receive app configs"
        )  
      end
      
    end
  end
end