class Entry

  def create_entry(diary_entry = "")
    # fail "This notebook is locked, unable to add entry. Please unlock" if Diary.is_locked == true
    @diary_entry = diary_entry
  end
end
