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
    @figure = Figure.create(params[:figure])
    @figure.name = params[:name]
    binding.pry
    @figures.save
  end

end
