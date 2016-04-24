class UsersController < ApplicationController
  def index
    @users = User.all(userlist)
  end

  def show
    @user = User.find(params[:id])
  end

private
    def userlist
        params.require(:users).permit(:name, :profile)
    end

end
