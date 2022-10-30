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

            event = {
                name: "post_created",
                data: {
                    post_id: @post.id,
                    post_title: @post.title
                }
            }

            DeliveryBoy.produce(@post.to_json, topic: "comments")
            DeliveryBoy.produce(event.to_json, topic: "activity")

            DeliveryBoy.deliver_messages
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