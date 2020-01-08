class Song 
  @@count = 0 
  @@genres= []
  def initialize (name,artist,genre)
    @name = name 
    @artist = artist 
    @genre = genre 
    @@count += 1
    @@genres = []:genre 
    @@artists = []:artist
    @@genre_count = {"rap"=>[] ,"rock"=>[] , "country"=>[]}
    @@artist_count = []
    end 
  attr_accessor :name , :artist , :genre 
  def self.count 
    @@count = count 
  end 
  def self.genres 
    @@genres = genres 
  end 
  def self.artists 
    @@artists = artists
  end 
  def self.genre_count 
    @@genre_count = genre_count
  end 
  def self.artist_count
    @@artist_count = artist_count
  end 
end 