dictionary = ["hello", "and", "cat", "pickle", "duck", "poncho", "soda", "orange", "green", "garden", "purple",
"red", "i", "you", "me", "we", "moo", "cake", "dog", "parmesan", "ice", "cream", "truck", "to", "would", "like", "sock",
"taste", "yummy", "good", "bad", "quiet", "trick", "question", "is", "this", "that", "them", "question", "list"]


def substrings(sentence, dictionary)

    check = sentence.split

    downcased = check.map(&:downcase)

    downcased.include?(sentence.downcase)

    inboth = dictionary & downcased

    results = inboth.each_with_object(Hash.new(0)) { |word, counts| counts[word] += 1}

puts results
end

substrings("I like jodie", dictionary)
