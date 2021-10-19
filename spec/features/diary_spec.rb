require 'diary'

describe Diary do
  it "locks the diary so users cannot add or get entries" do
    diary = Diary.new

    expect(diary.lock).to eq true
  end
end
