class FiguresController < ApplicationController

  get '/figures' do
    @figures = Figure.all
    erb :'figures/figureslist'
  end

  get '/figures/new' do
    erb :'figures/new'
  end

  post '/figures' do
    require 'pry'
    puts params
    @figures = Figure.create(params[:figure])
    @figures.save
  end

end
