class WordsController < ApplicationController
  include WordsHelper
	def home
	  @word = find_word()
	  @array = options()
  end
  def update
	  @word = Word.find(1)
	if params[:word][:answer] == @word.meaning
		render text: "Correct"
	else
		render text: "Wrong Answer"
	end
  end
end
