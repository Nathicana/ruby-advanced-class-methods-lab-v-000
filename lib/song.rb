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
    song
  end

def self.new_by_name(name)
      song = self.new
      song.name = name
      song
    end


def self.create_by_name(name)
  song = self.new
  song.name = name
  @@all << song
  song
end

def self.find_by_name(name)
self.all.find{|song| song.name == name}
end

def self.find_or_create_by_name(name)

if  self.find_by_name(name)
   self.find_by_name(name)
   else
  self.create_by_name(name)
end
end


def self.alphabetical
    @@all.sort_by {|song| song.name}
  end

  def self.new_from_filename(filename)
    file = filename.split(/([^\\w']+)/)
   artist_name = file[0]
   dash = file[1]
   space = file[2]
   space2 = file[3]
   space3 = file[4]
   name = file[1]
   period = file[6]
   filetype = file[7]

   new_song = self.new
   new_song.name = name
   new_song
 end





def self.destroy_all
  self.all.clear
end

end
