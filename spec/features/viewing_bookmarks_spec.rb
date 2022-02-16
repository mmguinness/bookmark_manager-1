# As an internet user
# In order to have quick access to websites I use frequently
# I would like to access a list of website bookmarks
feature 'Shows bookmarks' do
    scenario 'shows the list of bookmarks on the webpage' do
      visit('/bookmarks')
      connection = PG.connect(dbname: 'bookmark_manager_test')

      connection.exec("INSERT INTO bookmarks VALUES(7, 'http://www.makersacademy.com/');")
      connection.exec("INSERT INTO bookmarks VALUES(8, 'http://www.destroyallsoftware.com');")
      connection.exec("INSERT INTO bookmarks VALUES(9, 'http://www.google.com/');")

      visit ('/bookmarks')

      expect(page).to have_content "http://www.makersacademy.com/"
      expect(page).to have_content "http://www.destroyallsoftware.com"
      expect(page).to have_content "http://www.google.com/"
  end
end

feature 'Adding a Bookmark' do
  scenario 'submitting a bookmark via a form' do
    visit('/bookmarks/new')
    # connection = PG.connect(dbname: 'bookmark_manager_test')
    fill_in('url', :with => 'http://waterstones.com') 
    click_button "Add bookmark"
    expect(page).to have_content 'http://waterstones.com'
  end
end
