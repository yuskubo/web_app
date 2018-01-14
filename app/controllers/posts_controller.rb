class PostsController < ApplicationController
  def index
    @posts = Post.all

    @test = Post.new
  end
end
