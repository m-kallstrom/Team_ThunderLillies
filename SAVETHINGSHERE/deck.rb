require_relative 'question'

class Deck
  attr_reader :deck

  def initialize
    @list_of_questions = []
    @deck = []
  end

  def format_array(filename)
    question_file = File.open(filename, "r")
    question_content = question_file.read

    questions_all = question_content.split("\n")
    questions_all.each do |item|
        if item == ""
          questions_all.delete(item)
        end
    end
   @list_of_questions << questions_all
  end

  def create_deck
    i = 0
    while i < @list_of_questions[0].length
      @deck << Question.new({
        question: @list_of_questions[0][i],
        answer: @list_of_questions[0][i + 1]
        })
      i += 2
    end
  end

end


