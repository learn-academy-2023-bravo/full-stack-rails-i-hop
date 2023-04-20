class BlogController < ApplicationController

    def index
        @blogs = Blog.all 
    end

    def show 
        @blog = Blog.find(params[:id])
        #it is going to look for a blog by :id
    end

    def new 
        @blog = Blog.new
    end

    def edit
        @blog = Blog.find(params[:id])
    end

    def create 
        @blog = Blog.create(blog_params)
        if @blog.valid?
            redirect_to blogs_path
        end
    end

    def update
        @blog = Blog.find(params[:id])
        @blog.update(blog_params)
        if @blog.valid?
            redirect_to blogs_path
        end
    end

    def destroy
        @blog = Blog.find(params[:id])
        if @blog.destroy
            redirect_to blogs_path
        end
    end

    
    private
    # strong params # all the secret sauce
    def blog_params
        params.require(:blog).permit(:title, :content)
    end
end
