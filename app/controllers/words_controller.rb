class WordsController < ApplicationController
  def home
	  @word = Word.find(1)
  end
  def update
	  @word = Word.find(1)
	if params[:word][:answer] == @word.answer
		render text: "Correct"
	else
		render text: "Wrong Answer"
	end
  end
end
