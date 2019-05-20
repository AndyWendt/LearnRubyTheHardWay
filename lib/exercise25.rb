# https://learnrubythehardway.org/book/ex25.html
#

# https://stackoverflow.com/questions/9750610/ruby-require-error-cannot-load-such-file
require_relative "exercise25Module"

sentence = "All good things come to those who wait."
words = Ex25.break_words(sentence)
words
sorted_words = Ex25.sort_words words
sorted_words
Ex25.print_first_word sorted_words
Ex25.print_last_word sorted_words
sorted_words
sorted_words = Ex25.sort_sentence sentence
sorted_words
Ex25.print_first_and_last sentence
Ex25.print_first_and_last_sorted sentence
