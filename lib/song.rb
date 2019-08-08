class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []
    def initialize(name, artist, genre)
       @name = name 
       @artist = artist
       @genre = genre
       @@count += 1
       @@artists << @artist
       @@genres << genre
    end
    def self.count
        @@count
    end
    def self.artists
        @@artists.uniq
    end
    def self.genres
        @@genres.uniq
    end
    def self.genre_count
        g_count = {}
        @@genres.each do |element|
            g_count[element] ||= 0
            g_count[element] += 1
        end
        g_count
    end
    def self.artist_count
        a_count = {}
        @@artists.each do |element|
            a_count[element] ||= 0
            a_count[element] += 1
        end
        a_count
    end
end