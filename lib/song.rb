class Song
  attr_accessor :name, :artist_name
  @@songs = []

  def initialize(name)
  @name = name
  self.class.all << self
  end

  def self.all #class reader method that reads the data stored in class variable @@all#
    @@songs
  end

  def save
    self.class.all << self
  end


def self.find_by_name(name)
  @@songs.find{|song| song.name == name}
end

def self.destroy_all
  self.all.clear
end

end
