class Api::V1::UsersController < Api::ApiApplicationController
  skip_before_action :authenticate_request

  # POST /register
  def create
    @user = User.new(user_params)

    if @user.save
      command = AuthenticateUser.call(@user.email, @user.password)
      render json: { user: @user, token: command.result }, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  private
  # Only allow a trusted parameter "white list" through.
  def user_params
    params.permit(:email, :password, :password_confirmation)
  end
end
