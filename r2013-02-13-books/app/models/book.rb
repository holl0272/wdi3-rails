# == Schema Information
#
# Table name: books
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  release     :date
#  description :text
#  isbn        :string(255)
#  image       :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Book < ActiveRecord::Base
    attr_accessible :title, :release, :description, :isbn, :image, :author_id
    belongs_to :author
end
