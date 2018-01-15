class PostsController < ApplicationController

  before_action :set_post, only: [:show, :edit, :update, :destory]

  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html {redirect_to @post, notice: '登録処理が正常に終了しました'}
        # format.json {render :show, status: :created, location: @post}
      else
        format.html {render :new}
        # format.json {render json: @book.errors, status: unprocessable_entity}
      end
    end
  end

private
  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:content)
  end
end
