class ClubsController < ApplicationController
    def new
        @club  = Club.new
    end

end
