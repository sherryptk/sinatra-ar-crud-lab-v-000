require_relative '../../config/environment'
require 'pry'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do

  end

  get '/posts/new' do
    @name = params[:name]
    @content = params[:content]
    Post.create(@name, @content)

  erb :"/posts/new"
  end
end
