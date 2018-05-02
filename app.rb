require 'sinatra/base'
require_relative './lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect('/play')
  end

  get '/play' do
    @player1_name = $player1.name
    @player2_name = $player2.name
    @player1_health = $player1.health
    @player2_health = $player2.health
    erb(:play)
  end

  get '/hit' do
    "You've hit Player 2!"
    $player2.reduce_health
    redirect('/play')

  end

  run! if app_file == $0
end
