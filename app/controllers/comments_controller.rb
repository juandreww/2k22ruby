class CommentsController < ApplicationController
    def create
        @comment = Comment.create!(params)

        DeliveryBoy.delivery(comment.to_json, topic: "comments")
    end
end

#asynchronous Comments

