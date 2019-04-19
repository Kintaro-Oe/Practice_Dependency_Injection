require 'exercise_2'

describe Diary do


  context "#index" do
    it "indexes entries" do
      entry_double = double :entry_double
      entry_class = double :entry_class, new: entry_double #the 'new' stub doesn't care about arguments unless you tell it to
      diary = described_class.new(entry_class)
      diary.add("title", "body")
      expect(entry_double).to receive(:title)
      diary.index
    end
  end
end

describe Entry do
  let(:entry) { described_class.new("First","message") }

  it "#has a title" do
    expect(entry.title).to eq "First"
  end
  it "has a body" do
    expect(entry.body).to eq "message"
  end
end
