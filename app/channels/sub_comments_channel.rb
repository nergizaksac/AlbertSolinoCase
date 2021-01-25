class SubCommentsChannel < ApplicationCable::Channel
  def self.broadcast(sub_comment)
    broadcast.to sub_comment.post sub_comment:
                                    SubCommentsController.render(partial: 'sub_comments/sub_comment', locals: { sub_comment: sub_comment})
  end

  def subscribed
    stream_for Post.last
    # stream_from "some_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
