class UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end



    def create
        user = User.new(user_params)
        user.save
        # byebug
        if user.valid?
            render json: { user: UserSerializer.new(user), token: encode_token({user_id: user.id}) }, status: :created
        else 
            render json: { errors: user.errors.full_messages }, status: :not_accepted
        end
    end

    def show  
        user = User.find(params[:id])
        render ({json: { user: UserSerializer.new(user) }})
    end

    # def update
    #     user = User.new
    #   if user.update(user_params)
    #     render json: { user: UserSerializer.new(user), token: encode_token({ user_id: user.id }) }, status: :created
    #   else
    #     render json: { errors: user.errors.full_messages }, status: :not_accepted
    #   end
    # end

    # def destroy
    # end

    private

    def user_params
        params.require(:user).permit(:email, :password)
    end 



end
