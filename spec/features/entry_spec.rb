require 'entry'

describe Entry do
  it "creates a new entry" do
    entry = Entry.new

    expect(entry.create_entry("Dear diary, I like cheese")).to eq "Dear diary, I like cheese"
  end
end