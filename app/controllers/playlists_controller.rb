class PlaylistsController < ApplicationController
    def index
        @playlists = Playlist.all
      end
    
      def show
        @playlist = Playlist.find_by(id: params[:id])
        @song = @playlist.songs.build(user_id:current_user.id)
      end
    
      def new
        @playlist = Playlist.new
      end
    
      def create
        playlist = Playlist.create(playlist_params)
        redirect_to playlist_path(playlist)
      end
    
      def edit
        @playlist = Playlist.find_by(id: params[:id])
        @song = @playlist.songs.build(user_id:current_user.id)
      end
    
      def update
        playlist = Playlist.find_by(id: params[:id])
        playlist.update(playlist_params)
        redirect_to playlist_path(playlist)
      end
    
      private
      def playlist_params
        params.require(:playlist).permit(
            :name,
            :min_age,
            :happiness_rating,
            :sleepiness_rating
          )
      end
end 