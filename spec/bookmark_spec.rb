require_relative '../lib/bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com/');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.destroyallsoftware.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.google.com/');")

      bookmarks = Bookmark.all

      expect(bookmarks).to include "http://www.makersacademy.com/"
      expect(bookmarks).to include "http://www.destroyallsoftware.com"
      expect(bookmarks).to include "http://www.google.com/"
    end
  end

  describe '.create' do
    it "creates a new bookmark" do
      Bookmark.create(url: 'http://www.waterstones.com')
      expect(Bookmark.all).to include 'http://www.waterstones.com'
    end
  end
end