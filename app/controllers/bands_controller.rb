class BandsController < ApplicationController
    def index
        @bands = Band.all
    end

    def show
        @band = Band.find(params[:id])
        @members = @band.band_members
        @albums = @band.albums
    end

end
