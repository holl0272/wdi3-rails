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
#

require 'spec_helper'
describe Photo do
  let(:photo) {Photo.create(name: 'NYC', url: 'nyc.url')}

    describe '.new' do
      it 'creates an instance of a photo' do
        photo = Photo.new
        expect(photo).to be_an_instance_of(Photo)
      end
    end

  describe '.create' do
    it 'creates a photo' do
      photo.should be_an_instance_of(Photo)
      photo.name.should eq 'NYC'
      photo.url.should eq 'nyc.url'
    end
  end

  describe '#album' do
    it 'has an album' do
      album = FactoryGirl.create(:album)
      photo.album = album
      photo.album.should eq album
    end
  end
end
