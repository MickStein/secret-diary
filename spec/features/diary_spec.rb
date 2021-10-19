require 'diary'

describe Diary do
  it "locks the diary so users cannot add or get entries" do
    diary = Diary.new

    expect(diary.lock).to eq true
  end

  it "unlocks the diary so users can add or get entries" do
    diary = Diary.new

    expect(diary.unlock). to eq true
  end

  it "adds an entry to the diary that is a string saying 'Dear diary, today I ate bread' " do
    diary = Diary.new

    expect(diary.add_entry("Dear diary, today I ate bread")).to eq "Dear diary, today I ate bread"
  end
end
