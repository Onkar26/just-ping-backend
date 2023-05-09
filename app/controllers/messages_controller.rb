class MessagesController < ApplicationController

    def get_messages
        render :json => Message.where("(from_user_id = ? and to_user_id = ?) or (to_user_id = ? and from_user_id = ?)",  request.headers['From-User-Id'], request.headers['To-User-Id'], request.headers['From-User-Id'], request.headers['To-User-Id'])
    end

    def send_message
        puts params

        message = Message.new(from_user_id: params[:from_user_id], to_user_id: params[:to_user_id], message: params[:message], status: 'active')

        unless message.save
            render :json => message.errors
            return
        end

        render :json => { id: message.id } 
    end

    def edit_message
        message = Message.where(id: params[:id]).take
        
        unless message.present?
            render :json => { error: 'message is invalid!' } 
        end
       
        unless message.update(message: params[:message])
            render :json => message.errors
        end

        render :json => { id: message.id }
    end

    def delete_message
        message = Message.where(id: params[:id]).take

        unless message.update(status: 'active')
            render :json => message.errors
        end

        render :json => { id: message.id }
    end
end
