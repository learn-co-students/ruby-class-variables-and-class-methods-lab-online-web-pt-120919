class Song 
  attr_accessor :name :artists :genres 
  @@count = 0 
  
  def initialize(count)
    @@count += 1 
  end
  
  def self.count
    @@count 
  end
  
  @@genres_count = 0 
  GENRES = [] 
  
  def initialize(genres)
    @genres = genres
    GENRES << genres
    @@genres_count += 1 
  end
  
  def self.count
    @@genres
  end

  @@artist_count = 0 
  
  def initialize(artist)
    @artist = artist
    @@artist_count += 1 
  end
  
  def self.count 
    @@artist_count
  end 
end
  
  
  
  
 

  
    
  