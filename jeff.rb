class CharCount
  attr_reader :string
  def initialize()
    @string = gets.chomp
    counts_remix
  end

  def counts_remix
    final_hash = string.chars.reduce(Hash.new(0)) do |memo, element|
      memo[element] = memo[element] + 1
      memo
    end
    puts final_hash
    output_string(final_hash)
  end

  def output_string(final_hash)
    sorted_array = final_hash.sort_by {|k, v| v}.reverse
    output = sorted_array.reduce({}) do |hash, array|
      hash[array[0]] = array[1]
      hash
    end.map {|k,v| "#{k}: #{v}"}
    puts output
  end
end
