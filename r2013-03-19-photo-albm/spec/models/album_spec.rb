# == Schema Information
#
# Table name: albums
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Album do
  let(:album) {Album.create(name: 'Cities')}
  describe '.new' do
    it 'creates an instance of an album' do
      album = Album.new
      expect(album).to be_an_instance_of(Album)
    end
  end

  describe '.create' do
    it 'creates an album' do
      album.should be_an_instance_of(Album)
      album.name.should eq 'Cities'
    end
  end

  describe '#has photos' do
    it 'has photo' do
      photo = FactoryGirl.create(:photo)
      album.photos << photo
      album.photos.count.should eq 1
    end
  end

end
