class CharCount
  # {"a" => "b"}.merge({"c" => "d"})
  # => {"a" => "b", "c" => "d"})
  def count(string)
    count_map = string.chars.reduce(Hash.new(0)) do |hash, char|
      hash[char] += 1
      hash
    end
    output(count_map)
  end

  def output(count_map)
    # a,b = [1,2]
    # a = 1
    # b = 2
    sorted = count_map.sort_by(&:last).reverse
    # [["a", 6], ["b", 7]] -> char == "a", count == 6
    sorted.map do |char, count|
      "#{char}: #{count}"
    end.join("\n")
  end
end



#def count(string)
  #string.chars.reduce({}) do |h, c|
    #h.merge(c => h.fetch(c, 0) + 1)
  #end.sort_by do |char, count|
    #-count
  #end.map do |char, count|
    #"#{char}: #{count}"
  #end.join("\n")
#end

