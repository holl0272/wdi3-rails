# == Schema Information
#
# Table name: mountains
#
#  id      :integer          not null, primary key
#  name    :string(255)
#  image   :text
#  height  :float
#  range   :string(255)
#  parent  :string(255)
#  ascents :integer
#

class Mountain < ActiveRecord::Base
  attr_accessible :name, :image, :height, :range, :parent, :ascents
end

