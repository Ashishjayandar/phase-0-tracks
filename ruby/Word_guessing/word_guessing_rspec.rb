require_relative 'word_guessing'


describe WordGame do
  let(:word) { WordGame.new("unicorn") }

  it "stores the word given on initialization and display dashes proportional to the word length" do
    expect(word.display_dashes).to eq "-------"
  end

   it "replaces the guessed letter on the dashes" do
  	word.dashes = "-------"
  	expect(word.guessed_letter('n')).to eq "-n----n"
  end

  it "returns a message and ends the game when guesses are over" do
    word.guesses = 0
    expect(word.guess_limit).to eq "your guesses have expired, better luck next time"
  end

  #if you try to run this code it will throw an error the reason being the code 
  #is continuously run so if you want to run this code in the program comment out the 39th line ("guess_limit")
  #this method was added after the tests were completed but the 2nd test case can be done only with a single letter 
  # that is the reason it throws an error even if you don't comment it you can see that the printed patter matches the required patter
  #if you comment out the guess_limit method for running this you wouldn't get an error.
end