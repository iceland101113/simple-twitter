class UsersController < ApplicationController
  before_action :set_user

  def tweets
    @tweets = @user.tweets.includes(:replies).order(created_at: :desc)
  end

  def show
    @tweets = @user.tweets.order(created_at: :desc)
  end

  def edit
    if @user != current_user
      redirect_to root_path
      flash[:alert] = "You don't have the permission to edit!" 
    end
  end

  def update
    @user.update_attributes(user_params)
    redirect_to user_path(@user)
    flash[:notice] = "Your user profile was successfully updated!"    
  end

  def followings
    @followings = @user.followings.order(created_at: :desc)# 基於測試規格，必須講定變數名稱
  end

  def followers
    @followers = @user.followers.order(created_at: :desc) # 基於測試規格，必須講定變數名稱
  end

  def likes
    @likes_tweets=@user.likes_tweets.order(created_at: :desc) # 基於測試規格，必須講定變數名稱
  end

  def user_params
    params.require(:user).permit(:name, :introduction, :avatar)
  end

  def set_user
    if  params[:id]
      @user = User.find(params[:id])
    else
      @user = current_user
    end
  end

end
