class User < ApplicationRecord 
    validates_presence_of :name, :password_digest

    validates_uniqueness_of :name
end
