require_relative "slot_machine"

# Already played
# %w[🍒 7️⃣ 🛎] same as ["🍒", "7️⃣", "🛎"]
slot_machine = SlotMachine.new(%w[🍒 7️⃣ 🛎])
p slot_machine.score # => 0

# Ready to play
slot_machine = SlotMachine.new
reel = slot_machine.play # => ["🍒", "7️⃣", "🛎"] or any other reel
puts "You got: #{reel} - Your score : #{slot_machine.score}"