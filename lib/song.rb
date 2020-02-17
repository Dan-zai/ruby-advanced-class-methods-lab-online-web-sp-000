class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    song = self.new #initializes a song
    song.save #uses the save method via the .all class method
    song #returns the song instance above
end

def self.new_by_name(name)
  song = self.new 
  song.name = name
  song
end 


