class GamesController < ApplicationController
  def new
    charset = Array('A'..'Z') + Array('a'..'z')
    @letters = Array.new(10) { charset.sample }
  end

  def score
    @result = params[:game]
    characters = @result.split
    grid = @letters.split
    if characters.all? { |character| characters.count(character) <= grid.count(character) }
      @answer = "Congratulations! #{@result} is a valid english word!"
    else
      @answer = "Sorry but #{@result} does not seem to be a valid english word..."
    end
  end
end
