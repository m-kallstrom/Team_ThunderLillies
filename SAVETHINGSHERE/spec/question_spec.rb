require_relative '../question'

describe Question do
  let(:first_q) { Question.new( {question: "What is the capital?", answer: "Washington, DC"}) }

    it "Can ask a question" do
      expect(first_q.question).to eq "What is the capital?"
    end

    it "Gives an answer" do
      expect(first_q.answer).to eq "Washington, DC"
    end
  end

