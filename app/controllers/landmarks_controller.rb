class LandmarksController < ApplicationController

  get '/landmarks/new' do
    erb :'landmarks/new'
  end

  get '/landmarks' do
    @landmarks = Landmark.all
    erb :'landmarks/landmarklist'
  end

  get '/landmarks/:id' do
    @landmark = Landmark.find_by_id(params[:id])
    erb :'landmarks/show'
  end

  get '/landmarks/:id/edit' do
    @landmark = Landmark.find_by_id(params[:id])
    erb :'/landmarks/edit'
  end

  post '/landmarks/:id' do
    @landmark = Landmark.create(params['landmark'])
    redirect to "/landmarks/#{@landmark.id}"
  end





end
