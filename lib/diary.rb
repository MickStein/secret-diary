class Diary
  attr_reader :is_locked, :diary_entry

  def initialize(entry = "")
    @is_locked = true
    @diary_entry = entry
  end

  def lock
    true
  end

  def unlock
    @is_locked = false
  end

  def add_entry(diary_entry)
    fail "This notebook is locked, unable to add entry. Please unlock" if self.is_locked == true
    @diary_entry = diary_entry
  end

  def get_entry(diary_entry)
    fail "This notebook is locked, unable to add entry. Please unlock" if self.is_locked == true
    @diary_entry
  end
end