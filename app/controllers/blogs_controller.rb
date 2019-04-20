class BlogsController < ApplicationController

	def new
		 @blog = Blog.new
  end
  
	def create
	  @blog = Blog.new(blog_params)
	 
	  if @blog.save
	    redirect_to @blog
	  else
	    render 'new'
	  end
	end

	def edit
 	 @blog = Blog.find(params[:id])
	end

	def update
	  @blog = Blog.find(params[:id])
	 
	  if @blog.update(blog)
	    blog @blog
	  else
	    render 'edit'
	  end
	end

	def index
		@blogs = Blog.all
	end

	def show
	  @blog = Blog.find(params[:id])
	end

	def destroy
	  @blog = Blog.find(params[:id])
	  @blog.destroy
	 
	  redirect_to articles_path
	end

	private
	  def blog_params
	    params.require(:blog).permit(:title, :text)
	  end

end



   