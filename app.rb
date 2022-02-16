require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/bookmark'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    p ENV
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :'bookmarks/index'
  end

  get '/bookmarks/new/' do
    erb :"bookmarks/new"
  end

  post '/bookmarks' do
    p params
    p "Form data submitted to the bookmarks route"
    # @bookmarks = Bookmark.all
    erb :'bookmarks/index'
  end

  run! if app_file == $0
end