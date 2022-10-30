class CommentsController < ApplicationController
    def create
        @comment = Comment.create!(params)

        DeliveryBoy.delivery(comment.to_json, topic: "comments")
    end

    #asynchronous Comments
    def show
        @comment = Comment.find(params[:id])

        event = {
            name: "comment_viewed",
            data: {
                comment_id: @comment.id,
                user_id: current_user.id
            }
        }

        DeliveryBoy.deliver_async(event.to_json, topic: "activity")
    end
end


