require_relative "slot_machine"

# Already played
# %w[🍒 7️⃣ 🛎] same as ["🍒", "7️⃣", "🛎"]
slot_machine = SlotMachine.new(%w[🍒 7️⃣ 🛎])
p slot_machine.score # => 0

# Ready to play
slot_machine = SlotMachine.new
slot_machine.play
puts "Your score : #{slot_machine.score}"