class BlogsController < ApplicationController
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
    
    private
    def create_params
        params.require(:blog).permit(:title, :content)
    end
    
end
