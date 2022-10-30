class CommentsController < ApplicationController
    def create
        @comment = Comment.create!(params)

        event = {
            name: "comment_created",
            data: {
                comment_id: @comment.id,
                user_id: current_user.id
            }
        }

        DeliveryBoy.produce(comment.to_json, topic: "comments")
        DeliveryBoy.produce(event.to_json, topic: "activity")

        DeliveryBoy.deliver_messages
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


