require_relative '../slot_machine'

lose_combo = %w[🍒 7️⃣ 🛎]

def test_scenario(combo, expected_score)
  it "returns #{expected_score} for a combo of #{combo.join(" ")}" do
    expected = expected_score
    slot_machine = SlotMachine.new(combo)
    actual = slot_machine.score
    expect(actual).to eq(expected)
  end 
end

describe SlotMachine do
  describe "#score" do
    it "returns an integer" do
      expected = Integer
      slot_machine = SlotMachine.new(%w[🍒 7️⃣ 🛎])
      actual = slot_machine.score.class
      expect(actual).to eq(expected)
    end
    test_scenario(%w[🍒 7️⃣ 🛎], 0)
    test_scenario(%w[⭐️ 🛎 7️⃣], 0)
    test_scenario(%w[🤩 🤩 🤩], 50)
    test_scenario(%w[⭐️ ⭐️ ⭐️], 40)
    test_scenario(%w[🛎 🛎 🛎], 30)
    test_scenario(%w[7️⃣ 7️⃣ 7️⃣], 20)
    test_scenario(%w[🍒 🍒 🍒], 10)
    test_scenario(%w[🤩 ⭐️ ⭐️], 20)
    test_scenario(%w[🤩 🛎 🛎], 15)
    test_scenario(%w[🤩 7️⃣ 7️⃣], 10)
    test_scenario(%w[🤩 🍒 🍒], 5)
    test_scenario(%w[🤩 🤩 ⭐️], 25)
    test_scenario(%w[🤩 🤩 🛎], 25)
    test_scenario(%w[🤩 🤩 7️⃣], 25)
    test_scenario(%w[🤩 🤩 🍒], 25)
    # it "returns 0 for a combo of 🍒 7️⃣ 🛎" do
    #   expected = 0
    #   slot_machine = SlotMachine.new(%w[🍒 7️⃣ 🛎])
    #   actual = slot_machine.score
    #   expect(actual).to eq(expected)
    # end
  end
end