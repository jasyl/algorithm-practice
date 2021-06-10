# https://leetcode.com/problems/top-k-frequent-words/

# Given a non-empty list of words, return the k most frequent elements.

# Your answer should be sorted by frequency from highest to lowest. If two words have the same frequency, then the word with the lower alphabetical order comes first.

input = ["i", "love", "leetcode", "i", "love", "coding"]
k = 2
# Output: ["i", "love"]

#Option 1 Hash
def top_k_frequent_words(words, k)
  # we can use hash to store the frequency of words 
  # at the end we can filter out the words that have k most frequent words 
  # may have to sort the list at the end. 

  word_count = Hash.new(0)

  words.each do |word|
    word_count[word] += 1
  end
  p word_count
  # sorted_words = word_count.sort_by {|word, count| word}
  # p sorted_words
  sorted_count = word_count.sort_by {|word, count| -count}
  p sorted_count
  mapped = sorted_count.map {|word, count| word}
  p mapped
  p mapped.first(k)

end

#top_k_frequent_words(input, k)

input = ["i", "love", "leetcode", "i", "love", "coding"]
k = 3
top_k_frequent_words(input, k)



# # Option 2 Heap
# def top_k_frequent_words(words, k)
#   # we can use hash to store the frequency of words 
#   # then we store the values into a heap one by one? 
#   # if they have hte same value check if they are alphabetically ordered? 

#   word_count = Hash.new(0)

#   words.each do |word|
#     word_count[word] += 1
#   end
#   # max heap
#   heap = []
#   word_count.each do |pair|
#     heap.push(pair)
#     heap_up(heap, heap.length - 1)
#   end
# end

# def heap_up(heap, index)
#   return if index == 0
#   parent_index = (index - 1) / 2

#   if heap[parent_index][1] < heap[index][1]
#     swap(heap, parent_index, index)
#     heap_up(heap, parent_index)
#   elsif heap[parent_index][0] > heap[parent_index][0]
#     swap(heap, parent_index, index)
#     heap_up(heap, parent_index)
#   end
# end

# def swap(heap, index1, index2) 
#   temp = heap[index1]
#   heap[index1] = heap[index2]
#   heap[index2] = temp
# end

# input = ["i", "love", "leetcode", "i", "love", "coding"]
# k = 2
# p top_k_frequent_words(input, k)

