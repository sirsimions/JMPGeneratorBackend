class ApplicationController < ActionController::API
    include ActionController::Cookies

    def jwt_key
        Rails.application.credentials.jwt_key
    end

    def issue_token(auth)
        JWT.encode({auth_id: auth.id}, jwt_key, "HS256")
    end

    def decoded_token
        begin
            JWT.decode(token, jwt_key, true, { :algorithm => 'HS256' })
        rescue => exception
            [{error: "Invalid Token"}]
        end    
    end
    
    def token
        request.headers["Authorization"]
    end

    def auth_id
        decoded_token.first["auth_id"]
    end

    def current_auth
        auth ||= Auth.find_by(id: auth_id)
    end

    def logged_in?
        !!current_auth
    end
  end
