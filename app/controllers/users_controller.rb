class UsersController < ApplicationController
    def index
        @users = User.all

        respond_to do |format|
            format.html # index.html.erb
            format.json { render json: @music_albums }
        end
    end
end
