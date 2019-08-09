require 'pry'
class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count ()
        @@count
    end

    def self.genres ()
        @@genres.uniq
    end

    def self.artists 
        @@artists.uniq
    end

    def self.array_to_hash(array)
        hash ={}
        array.each {|x| hash[x] ? hash[x] += 1 : hash[x] = 1}
        hash
    end

    def self.genre_count
        self.array_to_hash(@@genres)
    end

    def self.artist_count
        self.array_to_hash(@@artists)
    end


end
