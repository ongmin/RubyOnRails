class MagicBallController < ApplicationController

  def result
    @magic_answer = generate_random_response
    puts @magic_answer
  end

  private
  def generate_random_response
    all_responses = [
      "I guess so..",
      "Maybe. Just maybe.",
      "I'm not sure, maybe ask someone else",
      "Absolutely",
      "Answer Unclear Ask Later",
      "Cannot Foretell Now",
      "Can't Say Now",
      "Chances Aren't Good",
      "Consult Me Later",
      "Don't Bet On It",
      "Focus And Ask Again",
      "Indications Say Yes",
      "Looks Like Yes",
      "No",
      "No Doubt About It",
      "Positively",
      "Prospect Good",
      "So It Shall Be",
      "The Stars Say No",
      "Unlikely",
      "Very Likely", "Yes",
      "You Can Count On It"
    ]
    all_responses.sample #.sample selects a random element from the array and return it
  end

end
