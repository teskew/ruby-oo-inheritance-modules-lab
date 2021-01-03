require 'pry'

class Song
 
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable
  include Paramable

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end

  def self.all
    @@songs
  end

  def self.find_by_name(name)
  @@songs.detect{|a| a.name == name}
  end

  def artist=(artist)
    @artist = artist
    #artist.add_song(self) unless artist.songs.include?(self)
  end

end

