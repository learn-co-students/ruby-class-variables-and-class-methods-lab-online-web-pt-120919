class Song 
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre 
    @@count += 1 
    @@artists << artist 
  end
  
  attr_accessor :name, :artist, :genre 
  
  @@count= 0
  @@genres =[]
  @@artists = []
  
  def Song.count 
    return @@count 
  end
  
  def Song.genres 
    u_genres = []
    gen_hash = {}
    @@genres.each do |gen|
      if !gen_hash.key?(gen)
        gen_hash[gen] = 0 
      end
    end
    gen_hash.each do |gen, num|
      u_genres << gen 
    end
      
    u_genres
  
  end
  
  def Song.artists 
    u_artist = []
    art_hash = {}
      @@artists.each do |art| 
        if !art_hash.key?(art)
          art_hash[art] = 0
        else
          art_hash[art] += 1 
        end
      end
    art_hash.each do |art, num|
      u_artist << art 
    end
    u_artist
  end
  
  def Song.genre_count
    gen_hash = {}
    @@genres.each do |gen|
      if !gen_hash.key?(gen)
        gen_hash[gen]= 1 
      else
        gen_hash[gen] += 1
      end
    end
    gen_hash
  end
  
  def Song.artist_count
    art_hash = {}
    @@artists.each do |art|
      if !art_hash.key?(art)
        art_hash[art] = 1 
      else
        art_hash[art] += 1 
      end
    end
    art_hash
  end
end 
