class QuestionsController < ApplicationController
  def ask
    params[:question].to_s
  end

  def answer
    @question = params[:question]
    @answer = print_answer
  end

  private

  def print_answer
    if @question == 'I am going to work'
      'Great!'
    elsif @question.last == '?'
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
