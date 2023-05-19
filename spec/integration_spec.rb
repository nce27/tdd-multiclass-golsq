require "diary"
require "diary_entry"

RSpec.describe "integration" do
  context "after adding some diary entries" do
    it "lists the entries added" do
      diary = Diary.new
      diary_entry = DiaryEntry.new("my_title", "my_contents")
      diary.add(diary_entry)
      expect(diary.all).to eq [diary_entry]
    end
  end
end