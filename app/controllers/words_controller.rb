class WordsController < ApplicationController
  include WordsHelper
  def new
	@word = Word.new
  end
  def create
	@word = Word.new(word_params)
	  if @word.save
		flash[:success] = "Great"
		redirect_to words_home_path
	else
		render 'words/new'
	end
  end
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

  private

  def word_params
	params.require(:word).permit(:name, :meaning)
  end
end
