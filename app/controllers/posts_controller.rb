class PostsController < ApplicationController
    def index
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
            puts @post.id
            redirect_to @post, id: @post.id, notice: "Post was created successfully  #{@post.title} #{@post.caption}"
        else
            render :new, status: :unprocessable_entity
        end
    end

    private 

    def post_params
        params.require(:post).permit(:title, :caption)
    end
end