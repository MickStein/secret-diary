class Diary
  attr_reader :is_locked

  def initialize
    @is_locked = true
  end

  def lock
    true
  end

  def unlock
    true
  end

  def add_entry(diary_entry)
    @diary_entry = diary_entry
  end

  def get_entry
    @diary_entry
  end
end