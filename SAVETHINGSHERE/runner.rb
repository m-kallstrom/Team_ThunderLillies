require_relative 'deck'
require_relative 'question'

if ARGV.any?
  filename = ARGV.first

  current_card = Deck.new
  current_card.format_array(filename)
  current_card.create_deck
  counter = 0
  current_card.deck.each do |pair|
    puts pair.question
    reply = STDIN.gets.chomp
      if reply == pair.answer
        puts "Correct!"
        counter += 1
      else
        puts "Wrong!"
      end
    end
  puts "You got #{counter} out of #{current_card.deck.length}"

end

