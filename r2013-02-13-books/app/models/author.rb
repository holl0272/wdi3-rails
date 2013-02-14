# == Schema Information
#
# Table name: authors
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  dob        :date
#  birthplace :string(255)
#  genre      :string(255)
#  image      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Author < ActiveRecord::Base
    attr_accessible :name, :dob, :birthplace, :genre, :image
    has_many :books
end
