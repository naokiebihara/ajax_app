class PostsController < ApplicationController

  def index
    @posts = Post.order(id: "DESC")
  end

    # コメントアウトする
    # def new
    # end

  def create
    Post.create(content: paramas[:content])
    redirect_to action: :index # 追記する
  end

end
