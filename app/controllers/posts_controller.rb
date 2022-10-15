class PostsController < ApplicationController
    def index
        @post = Current.post
    end

    def show
        @post = Post.find(params[:id])
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        if @post.save
            redirect_to :show, notice: "Post was created successfully"
        else
            render :new, status: :unprocessable_entity
        end
    end

    private 

    def post_params
        params.require(:post).permit(:title, :caption)
    end
end