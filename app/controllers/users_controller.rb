class UsersController < ApplicationController

    def get_users
        render :json => User.all
    end

    def add_user
        user = User.new(name: request.headers['Name'], password_digest: request.headers['Password-Digest'])

        unless user.save
            render :json => user.errors
            return
        end

        render :json => { id: user.id }
    end

    def validate_user
        user = User.where(name = params[:name], password_digest: params[:password_digest]).first

        unless user.present?
            render :json => self.errors.add(:user, 'is invalid!')
            return
        end

        render :json => { data: user}
    end
end
