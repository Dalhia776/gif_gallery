class Gif < ActiveRecord::Base
  belongs_to :User
  attachment :file, content_type: "image/gif", extension: "gif"
  validates_format_of :url, :with => /\.gif\z/, :message => "Only gifs allowed!"
  validates_uniqueness_of :url, :allow_blank => true



end
