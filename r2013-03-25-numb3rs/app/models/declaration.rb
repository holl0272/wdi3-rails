# == Schema Information
#
# Table name: declarations
#
#  id         :integer          not null, primary key
#  url        :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Declaration < ActiveRecord::Base
  attr_accessible :url
  has_many :words

  before_save :nuke_data
  after_save :get_data

  private

  def nuke_data
    Word.delete_all
    Declaration.delete_all
  end

  def get_data
    self.words = HTTParty.get("http://www.constitution.org/usdeclar.txt").split.each_with_index.map{|w, i| Word.new(value: w, index: i)}
  end
end

