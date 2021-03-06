# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  image      :string(255)
#  filename   :string(255)
#  album_id   :integer
#  artist_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  price      :decimal(, )
#

class Song < ActiveRecord::Base
    attr_accessible :name, :image, :filename, :price, :album_id, :artist_id, :genre_ids
    belongs_to :album
    belongs_to :artist
    has_and_belongs_to_many :mixtapes
    has_and_belongs_to_many :genres
    validates :price, :presence => true, :numericality => { :greater_than => 0 }
    # validates :name, :presence => true, :uniqueness => true
end
