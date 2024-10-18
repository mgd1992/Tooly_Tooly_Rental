class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  def show
    # Display the user's profile
  end

  # GET /users/:id/edit
  def edit
    # Render the edit form for the user
  end

  # PATCH/PUT /users/:id
  def update
    if @user.update(user_params)
      redirect_to @user, notice: 'User was successfully updated.'
    else
      render :edit
    end
  end

  private

  # Find the user by ID
  def set_user
    @user = User.find(params[:id])
  end

  # Permit the user parameters including photo
  def user_params
    params.require(:user).permit(:first_name, :last_name, :phone_number, :email, :photo)
  end
end
