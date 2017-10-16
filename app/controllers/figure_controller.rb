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
    @figures = Figure.create(:name => params[:id])
    @figures.save
  end

end
