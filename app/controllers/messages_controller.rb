class MessagesController < ApplicationController

    def get_messages
        render :json => User.all
    end

    def send_message
        
    end

    def delete_message
        
    end
end
