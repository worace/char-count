require "minitest"
require "minitest/autorun"
require "minitest/spec"
require "./char_count"

def wingspan_output
" : 6
r: 3
a: 3
o: 3
n: 3
w: 2
l: 2
t: 2
k: 1
W: 1
p: 1
g: 1
i: 1
I: 1
f: 1
y: 1
s: 1
e: 1"
end

describe CharCount do
  it "outputs counts" do
    cc = CharCount.new
    assert_equal "a: 3\nb: 2", cc.count("ababa")
  end

  it "does wingspan string" do
    cc = CharCount.new
    ws = cc.count("I really want to work for Wingspan")
    ws.split("\n").each do |line|
      assert wingspan_output.include?(line)
    end
  end
end
