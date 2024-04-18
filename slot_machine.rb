# Let’s implement a SlotMachine class with 3 reels. Each reel has 5 different items.

# SlotMachine.new(%w[🍒 7️⃣ 🛎]) => already played slot machine
# SlotMachine.new             => ready to play slot machine

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
          #  0  1  2  3 4  + 1
          #  1  2  3  4 5  * 10
          #  10 20 30 40 50

class SlotMachine
  def initialize(reels = [])
    # define instance variable
    @reels = reels
  end

  def score
    # check symbols:
    # if three of the same, return the highest score dep on the symbol
    # if @reels.uniq == @reels[0]
    if @reels.uniq.size == 1
      (SYMBOLS.index(@reels[0]) + 1 ) * 10
    # if two of the same + joker, return the corresp score dep on the symbol
    elsif @reels.uniq.size == 2 && @reels.include?("🤩")
      other_reel = @reels[0] == "🤩" ? @reels[1] : @reels[0]
      (SYMBOLS.index(other_reel) + 1 ) * 5
    # else return zero
    else
      0
    end
  end
end