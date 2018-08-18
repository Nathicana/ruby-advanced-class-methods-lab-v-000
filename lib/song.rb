class Song
  attr_accessor :name, :artist_name
  @@all = []


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
