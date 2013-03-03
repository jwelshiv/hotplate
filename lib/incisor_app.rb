require 'sinatra'
require 'mini_magick'
class IncisorApp < Sinatra::Base
  get '/' do
    '/'
  end
  run! if app_file == $0
end
