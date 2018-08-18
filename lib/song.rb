class Song
  attr_accessor :name, :artist_name
  @@all = []


   def self.new_from_filename(name, artist_name)
     rows = file_data.split("\n")
    songs = rows.collect do |row|
      data = row.split(", ")
      name = data[0]
      artist_name = data[2]
      song = self.new
      song.name = name
      song.artis_name = artist_name
      song
    end
  songs
  end

  def self.all #class reader method that reads the data stored in class variable @@all#
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = self.new
    @@all << song
  end

def self.new_by_name(name)
  @name = name
end

def self.create_by_name(name)
  song = self.new
  song.name = name
  @@all << song
  end

def self.find_by_name(name)
  @@all.find{|song| song.name == name}
end

def self.destroy_all
  self.all.clear
end

end
