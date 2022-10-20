require_relative '../slot_machine'

def test_scenario(expected, combo)
  it "returns #{expected} if the reel combo is #{combo.join(" ")}" do
    slot_machine = SlotMachine.new(combo)
    actual = slot_machine.score
    expect(actual).to eq(expected)
  end
end

describe SlotMachine do
  describe "#score" do
    it "returns 0 if the reel combo is 🍒 7️⃣ 🛎" do
      expected = 0
      slot_machine = SlotMachine.new(%w[🍒 7️⃣ 🛎])
      actual = slot_machine.score
      expect(actual).to eq(expected)
    end
    # it "returns 50 if the reel combo is 🤩 🤩 🤩" do
    #   expected = 50
    #   slot_machine = SlotMachine.new(%w[🤩 🤩 🤩])
    #   actual = slot_machine.score
    #   expect(actual).to eq(expected)
    # end
    test_scenario(50, %w[🤩 🤩 🤩])
    test_scenario(40, %w[⭐️ ⭐️ ⭐️])
    test_scenario(30, %w[🛎 🛎 🛎])
    test_scenario(20, %w[7️⃣ 7️⃣ 7️⃣])
    test_scenario(10, %w[🍒 🍒 🍒])
    test_scenario(20, %w[⭐️ ⭐️ 🤩])
    test_scenario(15, %w[🛎 🛎 🤩])
    test_scenario(10, %w[7️⃣ 7️⃣ 🤩])
    test_scenario(5, %w[🍒 🍒 🤩])
    test_scenario(25, %w[🤩 🤩 🍒])
  end
end