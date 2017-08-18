require

class Deck
  def initialize
    @list_of_questions = []
  end

  def create_deck(filename)
    question_file = File.open(filename, "r")
    question_content = question_file.read

  end

end
