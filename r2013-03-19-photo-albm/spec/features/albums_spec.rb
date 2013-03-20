require 'spec_helper'

describe 'albums' do

  describe 'GET /' do
    it 'displays a New Albums link' do
      visit root_path
      page.should have_link('New Album')
    end
  end

  describe 'GET /albums/new' do
    it 'displays a Album form', :js => true do
      visit root_path
      click_link('New Album')
      page.should have_link('Cancel')
      page.should have_button('Create Album')
    end
  end

  describe 'JS cancel_album_form()' do
    it 'removes the new album form', :js => true do
      visit root_path
      click_link('New Album')
      click_link('Cancel')
      page.should_not have_button('Create Album')
    end
  end

  describe 'POST /albums' do
    it 'should create a new album', :js => true do
      visit root_path
      click_link('New Album')
      fill_in('Name', :with => 'Cities')
      click_button('Create Album')
      page.should_not have_button('Create Album')
      page.should have_text('Cities')
      expect(Album.first.name).to eq 'Cities'
    end
  end

  describe 'POST /albums/3' do
    it 'display the album show page', :js => true do
      visit root_path
      click_link('New Album')
      fill_in('Name', :with => 'Cities')
      click_button('Create Album')
      click_link('Cities')
      current_path.should eq '/albums/1'
    end

    it 'displays the new photo link', :js => true do
      album = FactoryGirl.create(:album)
      visit root_path
      click_link('Cities')
      page.should have_link('New Photo')
    end
  end

  describe 'POST /albums' do
    it 'should sort the albums by name', :js => true do
      visit root_path

      click_link('New Album')
      fill_in('Name', :with => 'Things')
      click_button('Create Album')

      click_link('New Album')
      fill_in('Name', :with => 'Cities')
      click_button('Create Album')

      click_link('New Album')
      fill_in('Name', :with => 'People')
      click_button('Create Album')

      page.should have_css('table tr:nth-child(2) td:nth-child(1)', :text => 'Cities')
      page.should have_css('table tr:nth-child(2) td:nth-child(2)', :text => '0')
      page.should have_css('table tr:nth-child(3) td:nth-child(1)', :text => 'People')
      page.should have_css('table tr:nth-child(3) td:nth-child(2)', :text => '0')
      page.should have_css('table tr:nth-child(4) td:nth-child(1)', :text => 'Things')
      page.should have_css('table tr:nth-child(4) td:nth-child(2)', :text => '0')

      visit root_path

      page.should have_css('table tr:nth-child(2) td:nth-child(1)', :text => 'Cities')
      page.should have_css('table tr:nth-child(2) td:nth-child(2)', :text => '0')
      page.should have_css('table tr:nth-child(3) td:nth-child(1)', :text => 'People')
      page.should have_css('table tr:nth-child(3) td:nth-child(2)', :text => '0')
      page.should have_css('table tr:nth-child(4) td:nth-child(1)', :text => 'Things')
      page.should have_css('table tr:nth-child(4) td:nth-child(2)', :text => '0')
    end
  end
end