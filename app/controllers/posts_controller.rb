class PostsController < ApplicationController

  def index
    @post = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
     if @post.save 
      flash[:notice] = " Post saved"
       redirect_to user_post_path(params[:user_id], @post)
      else 
      flash[:notice] = " Post Error"
      end 

  end


  def edit
  end

  def update
    @post = Post.find(params[:id])
    if @post.update
      flash[:notice] = "Post successfully updated."
    else
      flash[:notice] = " Post has an error."
  end
  redirect_to :back
end
  def show
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      flash[:notice] = "Post Successfully deleted."
    else
      flash[:notice] = " There was a problem deleting the post."
  end
 redirect_to :back
end


private
  def post_params
  params.require(:post).permit(:content, :title)
  end
 end 