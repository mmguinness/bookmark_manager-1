require 'pg'

class Bookmark
    def self.all
      if ENV['ENVIRONMENT'] == 'test'
        connection = PG.connect(dbname: 'bookmark_manager_test')
      else
        connection = PG.connect(dbname: 'bookmark_manager')
      end
      
    result = connection.exec("SELECT * FROM bookmarks;")
    result.map { |bookmark| bookmark['url'] }
    end

    def add_bookmark(bookmark)
      connection.exec("INSERT INTO bookmarks VALUES(9, 'http://www.google.com/');")
    end
  end