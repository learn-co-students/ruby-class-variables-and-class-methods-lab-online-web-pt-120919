require"pry"
class Song
  @@count = 0
  @@genres = []
  @@artists = []
 
  attr_accessor :name,:artist,:genre
  def initialize(name,artist,genre)

  @name = name
  @artist = artist
  @genre = genre
  @@count +=1
  @@genres << genre
  @@artists << artist
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
   genre_hash ={}
   @@genres.each do |gen|
     genre_hash[gen].nil? ? genre_hash[gen] = 1 : genre_hash[gen] += 1
 end
 genre_hash
 end
 
 def self.artist_count
    artist_hash = {}
    @@artists.each do |artist|
      artist_hash[artist].nil? ? artist_hash[artist] = 1 : artist_hash[artist] += 1
    end
    artist_hash
  end
end







#class Album
 # @@album_count = 0 
 
 # def initialize
#    @@album_count += 1
  #end
 
  #def self.count
   # @@album_count
 # end
#end