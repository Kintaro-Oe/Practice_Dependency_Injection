require 'exercise_1'

describe Note do
  it "displays formatted self" do
    formatter = double :formatter
    note = Note.new("Hello","World!",formatter)
    allow(formatter).to receive(:format).and_return("Title: #{note.title}\n#{note.body}")
    expect(note.display).to eq "Title: Hello\nWorld!"
  end
end

describe NoteFormatter do
  it "returns a formatted note" do
    note = double :note, title: "Hello", body: "World!" #setting stub at the same time!
    expect(subject.format(note)).to eq "Title: Hello\nWorld!"
  end
end
