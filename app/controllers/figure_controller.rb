class FiguresController < ApplicationController

  get '/figures' do
    @figures = Figure.all
    erb :'figures/figureslist'
  end

  get '/figures/new' do
    erb :'figures/new'
  end

  post '/figures' do
    puts params
    @figure = Figure.create(params[:figure])
    if !params["landmark"]["name"]
  end

end
