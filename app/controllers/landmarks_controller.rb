class LandmarksController < ApplicationController

  get '/landmarks/new' do
    erb :'landmarks/new'
  end

  get '/landmarks' do
    erb :'landmarks/landmarklist'
  end

end
