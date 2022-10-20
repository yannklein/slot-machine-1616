require_relative "slot_machine"

# Already played
slot_machine = SlotMachine.new(%w[🍒 7️⃣ 🛎])
p slot_machine.score

# Ready to play
slot_machine = SlotMachine.new
slot_machine.play
puts "Your score : #{slot_machine.score}"