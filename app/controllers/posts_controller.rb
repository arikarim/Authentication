class PostsController < ApplicationController
    before_action :authenticate_user! , only: [:new, :create]

    def index
        @posts = Post.all
    end

    def new
        @post = Post.new
    end

    def create
        @post = current_user.posts.build(post_params)
        if @post.save
            redirect_to root_path
        else
            render :new
        end
    end

    private
    
    def post_params
        params.require(:post).permit(:user_id, :title, :body)
    end
end
