require 'spec_helper'
require_relative '../lib/caesar.rb'

describe "decodes a string" do
  it "encodes one character" do
    expect(caesar_decode('d', 3)).to eq('a')
    expect(caesar_decode('b', 1)).to eq('a')
    expect(caesar_decode('s', 3)).to eq('p')
    expect(caesar_decode('c', 3)).to eq('z')
  end

  it "preserves uppercase" do
    expect(caesar_decode('S', 3)).to eq('P')
    expect(caesar_decode('C', 3)).to eq('Z')
  end

  it "does not convert spaces" do
    expect(caesar_decode('S   S', 3)).to eq('P   P')
  end

  it "does not convert punctuation" do
    expect(caesar_decode('*&^.', 3)).to eq('*&^.')
  end

  it "converts sentences" do
    expect(caesar_decode("N'r f ynljw", 5)).to eq("I'm a tiger")
  end

  it "works with crazy high offsets" do
    expect(caesar_decode("S'w k dsqob", 9500)).to eq("I'm a tiger")
  end
end
