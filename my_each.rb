list = ["cam", "bam", "sam"]

def my_each(array)
  i = 0
  while i < array.length
    yield(array[i])
    i = i + 1
  end
end

my_each(list) {|i| puts "What is #{i} doing today?"}


def hello(array)
  i = 0
  collection = []
  while i < array.length
    collection << yield(array[i])
    i += 1
  end
  collection
end

hello(list) {|i| puts "Hey #{i}, how are you?" }