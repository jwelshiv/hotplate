require 'sinatra'
require 'mini_magick'
class IncisorApp < Sinatra::Base
  get "/*" do
    params[:splat]
  end
end

IncisorApp.run
