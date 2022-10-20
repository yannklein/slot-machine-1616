require_relative "slot_machine"

# Already played
puts SlotMachine.new(%w[🍒 7️⃣ 🛎])

# Ready to play
slot_machine = SlotMachine.new
slot_machine.play
puts "Your score : #{slot_machine.score}"