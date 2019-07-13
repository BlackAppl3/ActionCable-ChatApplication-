class MessagesController < ApplicationController
    def create 
        message = Message.new(message_params)
        if message.save  
            ActionCable.server.broadcast "chatrooms_channel", foo: message.body 
        end
    end

private

    def message_params
        params.require(:message).permit(:body)
    end

end
