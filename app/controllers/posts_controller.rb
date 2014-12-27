class PostsController < ApplicationController
   
   def index
      @posts = Post.all
   end

   def new
      @post = Post.new
   end

   def edit
     @post = Post.find(params[:id])
   end

   def show
   	@post = Post.find(params[:id])
   	render :show
   end
   def create
       @post = Post.new(params[:post])
       @post.save
       @posts = Post.all
       render :index
   end

   def update
	   @post = Post.find(params[:id])	
	   @post.update_attributes(params[:post])
	   @posts = Post.all
	   render :index   	
   end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    @posts = Post.all
    render :index
  end

private



end