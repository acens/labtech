class PostsController < ApplicationController

  def post
    render "post"
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find params[:id]
  end
  def create
    valores = params.require(:post).permit :title,:description,:photo,:admin_user_id,:admin_user
    @post = Post.new valores
    if @post.save
      redirect_to root_url
    else
      render :new
    end
  end

  def destroy
    redirect_to root_url, notice: "Artigo removido!"
    @post = Post.find params[:id]
    @post.destroy
  end

  # private
  # def set_player

  # end

  # def post_params
  #   params.require(:post).permit :title,:description,:photo,:admin_user_id,:admin_user
  # end

end
