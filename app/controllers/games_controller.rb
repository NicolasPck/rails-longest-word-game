class GamesController < ApplicationController
  def new
    @letters = [*('A'..'Z')].sample(10)
  end

  def score
    @guess = params[:answer].upcase
    @grid = params[:grid]
    if !guess.chars.all? do |letter|
      @guess.count(letter) <= grid.count(letter)
    end
      return @score = "#{guess} cant be build from #{grid}"
    raise
  end
end

