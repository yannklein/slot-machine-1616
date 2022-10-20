# Let’s implement a SlotMachine class with 3 reels. Each reel has 5 different items.

# SlotMachine.new             => ready to play slot machine
# SlotMachine.new(%w[🍒 7️⃣ 🛎]) => already played slot machine

# The class has one public instance method, score, following these rules:

# Item	      Three of the same	  Two of the same + Joker
# Joker   🤩	50	                25 (2 jokers + anything)
# Star    ⭐️	40	                20
# Bell    🛎	30	                15
# Seven   7️⃣	 20	                 10
# Cherry  🍒	10	                5

# Optional
# The class has one public instance method, play udpate and return random combi of reels.

SYMBOLS = %w[🍒 7️⃣ 🛎 ⭐️ 🤩]
          #  0  1  2  3 4
          #  1  2  3  4 5   + 1
          #  10 20 30 40 50 *10
          #  5 15 20 20 25 *5

class SlotMachine
  # create initialize method with one params (array), default -> empty
  # define instance variables, one for reels combo, one for results
  def initialize(combo = [])
    @combo = combo
    @results = 0 
  end

  # define the score (instance method)
  def score
  # if 3 time same items
    if @combo.uniq.size == 1
      # return score as integer depending on the item
      return (SYMBOLS.index(@combo.first) + 1) * 10
    # if two of the same AND includes a joker
    elsif @combo.uniq.size == 2 && @combo.include?('🤩')
      # return score as integer depending on the item
      return (SYMBOLS.index(@combo.first) + 1) * 5
    # if different
    else
      return 0
    end
  end

  def play
    @combo = []
    60.times do
      @combo = []
      3.times do
        @combo << SYMBOLS.sample
      end
      print "|\t" + @combo.join("\t|\t") + "\t|\r"
      $stdout.flush
      sleep(0.03)
    end
    puts "-" * 49
    print "|\t" + @combo.join("\t|\t") + "\t|\r"
    puts "\n" + "-" * 49
  end
end