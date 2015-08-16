class AddImageToGif < ActiveRecord::Migration
  def self.up
    add_column :gifs, :image, :string
  end
  
  def self.down
    remove_column :gifs, :image
  end

end
