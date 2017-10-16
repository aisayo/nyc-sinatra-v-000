class LandmarksController < ApplicationController

  get '/landmarks/new' do
    erb :'landmarks/new'
  end

  get '/landmarks' do
    @landmarks = Landmark.all
    erb :'landmarks/landmarklist'
  end

  get '/landmarks/:id' do
    @landmark = Post.find_by_id(params[:id])
    erb :show
  end

end
