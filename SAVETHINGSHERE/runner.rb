require_relative 'deck'
require_relative 'question'

if ARGV.any?
  filename = ARGV.first

  current_card = Deck.new
  current_card.create_deck(filename)
  counter = 0
  current_card.list_of_questions.each do |pair|
    puts pair.question
    reply = STDIN.gets.chomp
      if reply == pair.answer
        puts "Correct!"
        counter += 1
      else
        puts "Wrong!"
      end
    end
  puts "You got #{counter} out of #{list_of_questions.length}"

end

