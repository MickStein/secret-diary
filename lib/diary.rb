class Diary
  attr_reader :is_locked, :diary_entry, :diary_entries

  def initialize(entry = Entry.new, diary_entries = [])
    @is_locked = true
    @entry = entry
    @diary_entries = diary_entries
  end

  def lock
    true
  end

  def unlock
    @is_locked = false
  end

  def add_entry(an_entry)
    fail "This notebook is locked, unable to add entry. Please unlock" if self.is_locked == true

    diary_entries << @entry.create_entry(an_entry)
  end

  def get_entry(wanted_entry)
    fail "This notebook is locked, unable to add entry. Please unlock" if self.is_locked == true

    if diary_entries.include?(wanted_entry)
      wanted_entry
    end
  end
end