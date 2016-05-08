class BlogsController < ApplicationController
    before_action :correct_user,   only: [:edit, :update, :destroy]

    def index
        @blogs = Blog.all
    end
    
    def new
        @blog = Blog.new
    end
    
    def create
        Blog.create(create_params)
        redirect_to action: :index
    end
    
    def edit
        @blog = Blog.find(params[:id])
    end
    
    def update
        @blog = Blog.find(params[:id])
        @blog.update_attributes(create_params)
        flash[:success] = "Profile updated"
        redirect_to action: :index
    end
    
    def destroy
        Blog.destroy(params[:id])
        redirect_to action: :index
    end
    
    def correct_user
      @blog = Blog.find(params[:id])
      redirect_to(root_url) unless @blog.user == current_user
    end
    
    private
    def create_params
        params.require(:blog).permit(:title, :content, :user_id)
    end

    
end
