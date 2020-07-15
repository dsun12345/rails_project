class SongsController < ApplicationController
    def create
        song = Song.create(song_params)
        #message = song.take_song
        redirect_to user_path(song.user) #flash: { message:message }
      end
    
      private
      def song_params
        params.require(:song).permit(
          :user_id,
          :playlist_id
          )
      end
end 