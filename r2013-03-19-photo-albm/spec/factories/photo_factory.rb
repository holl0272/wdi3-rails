# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  url        :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  album_id   :integer
#  user_id    :integer
#

FactoryGirl.define do
  factory :photo, class: Photo do
    name 'Nyc'
    url 'nyc.jpg'
  end
end
