require 'diary'

describe Diary do
  it "diary starts locked" do
    diary = Diary.new

    expect(diary.is_locked).to eq true
  end

  it "locks the diary so users cannot add or get entries" do
    diary = Diary.new

    expect(diary.lock).to eq true
  end

  it "unlocks the diary so users can add or get entries" do
    diary = Diary.new

    expect(diary.unlock).to eq true
  end

  it "adds an entry to the diary that is a string saying 'Dear diary, today I ate bread'" do
    diary = Diary.new

    expect(diary.add_entry("Dear diary, today I ate bread")).to eq "Dear diary, today I ate bread"
  end

  it "retrieves an entry for the user to read" do
    diary = Diary.new
    diary.add_entry("I do not feel great today :(")

    expect(diary.get_entry).to eq "I do not feel great today :("
  end
end
