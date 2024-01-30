# class SessionsController < ApplicationController
#     def login
#         auth = auth.find_by(authname: params[:authname])
    
#         if auth && auth.authenticate(params[:password])
#           token = generate_token(auth.id)
#           render json: { token: token }
#         else
#           render json: { error: 'Invalid authname or password' }, status: :unauthorized
#         end
#       end
    
#       private
    
#       def generate_token(auth_id)
#         payload = { auth_id: auth_id }
#         secret_key = Rails.application.credentials.secret_key_base
#         JWT.encode(payload, secret_key, 'HS256')
#       end
# end


class SessionsController < ApplicationController
    def create
        auth = Auth.find_by_user_name(session_params[:user_name])

        if auth && auth.authenticate(session_params[:password])
            token = issue_token(auth)
            render json: {auth: AuthSerializer.new(auth), jwt: token}
        else
            render json: {error: "Incorrect authname or password."}
        end
    end

    def show
        if logged_in?
            render json: current_auth
        else
            render json: {error: "auth is not logged in/could not be found."}
        end
    end

    def destroy
        if logged_in?
          # Clear the user's token (assuming you store tokens in the database)
          current_auth.update(token: nil)
    
          # Clear the session
          session.delete(:auth_id)
          render json: { message: 'Logged out successfully' }, status: :ok
        else
          render json: { error: 'Not logged in' }, status: :unprocessable_entity
        end
      end


    private
    def session_params
        # params.permit(:user_name, :password)
        auth_params = params.require(:session).permit(:user_name, :password)
    end
end