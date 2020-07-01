# here is where I will create some seed data to work with and test associations

# Create 2 users

ashley = User.create(name: "Ashley", email: "ashley@ashley.com", password: "password")
anibal = User.create(name: "Anibal", email: "anibal@anibal.com", password: "password")

# Create some option entries

OptionEntry.create(ticker: "SBUX", option_type: "CALL", profit_or_loss: "75.00tux", user_id: ashley.id)

# Use AR to pre-associate data:

ashley.option_entries.create(ticker: "FB", option_type: "PUT", profit_or_loss: "155.00")

anibals_entry = anibal.option_entries.build(ticker: "CTRM", option_type: "SHARES", profit_or_loss: "43.98")
anibals_entry.save