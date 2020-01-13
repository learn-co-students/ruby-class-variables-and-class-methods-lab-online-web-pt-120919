require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  #class variables
  @@total_songs = [] 
  @@artists = []
  @@genres = []
  @@unique_artist = []
  @@unique_genre = []
  @@count = 0

def initialize(name,artist,genre)
  @name = name
  @genre = genre
  @artist = artist
  #shovel each artist and Genre into class variables
  @@artists << @artist
  @@genres << @genre
  @@total_songs << @name 
  @@count += 1
end

#class methods

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
@new_hash = {}
@@genres.each do |i|
if @new_hash[i]  
@new_hash[i] += 1 

else 
  @new_hash[i] = 1 
end
end
@new_hash
end

def self.artist_count
  @art_hash = {}
  @@artists.each do |i|
    if @art_hash[i]
      @art_hash[i] += 1
    else 
      @art_hash[i] = 1 
    end
  end
  @art_hash
end
  



end