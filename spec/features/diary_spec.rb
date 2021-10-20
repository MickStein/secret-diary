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
    diary.unlock

    expect(diary.is_locked).to eq false
  end

  it "adds an entry to the diary that is a string saying 'Dear diary, today I ate bread'" do
    diary = Diary.new
    diary.unlock

    expect(diary.add_entry("Dear diary, today I ate bread")).to eq "Dear diary, today I ate bread"
  end

  it "retrieves an entry for the user to read" do
    diary = Diary.new
    diary.unlock
    diary.add_entry("I do not feel great today :(")

    expect(diary.get_entry).to eq "I do not feel great today :("
  end

  it "raises an error when user tries to add_entry while locked" do
    diary = Diary.new

    expect{diary.add_entry("I do not feel great today :(")}.to raise_error "This notebook is locked, unable to add entry. Please unlock"
  end

  it "raises an error when user tries to get_entry while locked" do
    diary = Diary.new

    expect{diary.get_entry("I do not feel great today :(")}.to raise_error "This notebook is locked, unable to get entry. Please unlock"
  end
end
