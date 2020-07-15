class User < ApplicationRecord
    
    has_secure_password
    has_many :songs
    has_many :playlists, through: :songs

    def mood
        # has a method 'mood' that returns 'sad' when the user is more nauseous than happy
        # has a method 'mood' that returns 'happy' when the user is more happy than nauseous
        unless admin
          happiness > sleepiness ? 'happy' : 'sleepy'
        end
     end

end 