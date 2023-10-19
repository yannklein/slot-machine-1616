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
          #  0  1  2  3 4  + 1
          #  1  2  3  4 5  * 10
          #  10 20 30 40 50

class SlotMachine
  def initialize(combo = [])
    @combo = combo
  end

  def score
    if @combo.uniq.count == 1
      # we have three same items
      result = (SYMBOLS.index(@combo[0]) + 1) * 10
    elsif @combo.uniq.count == 2
      # find the "double item": it should not be the joker, 
      # we check the first item, then the second and keep 
      # the one one that is not the joker
      double_item = @combo[0] == "🤩" ? @combo[1] : @combo[0]
      result = (SYMBOLS.index(double_item) + 1) * 5
    else
      result = 0
    end
    result
  end
end