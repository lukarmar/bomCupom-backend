class Api::V1::UserController < Api::V1::ApiController

    def index
        profile = User.order('id');
        render json: profile
    end

    def create
        profile = User.new(user_params)
        
        if profile.save
            render json: {status: 'SUCCESS', message: 'Saved user', data: profile}, status: :ok
        else
            render json: {status: 'ERROR', message: 'User not saved', data: profile.errors}, status: :unprocessable_entity
        end
    end

    private
    def user_params
        params.require(:user).permit(:name, :password, :email, :birthDate, :sex)
    end
end