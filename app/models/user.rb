class User < ApplicationRecord
    has_secure_password
    has_many :songs
    has_many :playlists, through: :songs
    validates :name, presence: true
    validates :email, presence: true
    validates :age, numericality: { only_integer: true}
    validates :password, length: { in: 6...20 }
end 