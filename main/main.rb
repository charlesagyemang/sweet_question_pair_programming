class Main

    def self.get_unique_words(word1, word2)
        # check the bigger text
        longer_word, shorter_word = [word1.to_s, word2.to_s].sort_by(&:length).reverse

        #remove small word from big word
        longer_word.split("").reject{|a| shorter_word.split("").include?(a)}.join("")
    end

    def self.get_unique_words_readable (word1, word2)
        common = word1.chars & word2.chars
        (word1 + word2).delete(common.join)
    end

end