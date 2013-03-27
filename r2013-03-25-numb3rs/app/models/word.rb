# == Schema Information
#
# Table name: words
#
#  id             :integer          not null, primary key
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  declaration_id :integer
#  value          :string(255)
#  index          :integer
#

class Word < ActiveRecord::Base
  attr_accessible :value, :index
  belongs_to :declaration
end
