class AuthsController < ApplicationController
    def create
        auth = Auth.new(auth_params)
    
        if auth.save
            token = issue_token(auth)
            render json: {auth: AuthSerializer.new(auth), jwt: token}
        else
            if auth.errors.messages
                render json: {error: auth.errors.messages}
            else
                render json: {error: "auth could not be created. Please try again."}
            end 
        end
    end
    
      def show
        auth = Auth.find_by(id: params[:id]);
        if auth
            render json: auth, status: :created
        else
            render json: { error: "Not authorized" }, status: :unauthorized
        end
    end
    
      
      def index
          auth=Auth.all
          render json: auth
      end
    
      def profile
          render json: @auth
      end
    
      
      private
    # def generate_token(auth_id)
    #   payload = { auth_id: auth_id }
    #   secret_key = Rails.application.credentials.secret_key_base
    #   JWT.encode(payload, secret_key, 'HS256')
    # end
  
    def auth_params
        params.permit(:user_name, :password, :role, :password_confirmation)
    end
end









# class UsersController < ApplicationController
#     def create
#         user = User.new(user_params)
    
#         if user.save
#             token = issue_token(user)
#             render json: {user: UserSerializer.new(user), jwt: token}
#         else
#             if user.errors.messages
#                 render json: {error: user.errors.messages}
#             else
#                 render json: {error: "User could not be created. Please try again."}
#             end
#         end
#     end
    
#       def show
#         user = User.find_by(id: params[:id]);
#         if user
#             render json: user, status: :created
#         else
#             render json: { error: "Not authorized" }, status: :unauthorized
#         end
#     end
    
      
#       def index
#           user=User.all
#           render json: user
#       end
    
#       def profile
#           render json: @user
#       end
    
      
#       private
#     # def generate_token(user_id)
#     #   payload = { user_id: user_id }
#     #   secret_key = Rails.application.credentials.secret_key_base
#     #   JWT.encode(payload, secret_key, 'HS256')
#     # end
  
#     def user_params
#         params.require(:user).permit(:user_name, :password, :role, :password_confirmation)
#     end
#   end
  