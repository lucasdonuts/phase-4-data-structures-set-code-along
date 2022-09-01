class MySet
  attr_reader :hash

  def initialize(enumerable = [])
    @hash = {}

    enumerable.each do |value|
      add(value)
    end
  end

  def include?(value)
    hash.has_key?(value)
  end

  def add(value)
    hash[value] = true
    self
  end

  def delete(value)
    hash.delete(value)
    self
  end

  def size
    hash.size
  end

  def self.[](*args)
    new(args)
  end

  def clear
    hash.clear
    self
  end

  def each
    hash.each_key do |key|
      yield(key)
    end
    self
  end

  def inspect
    "#<MySet: {#{hash.keys.join(', ')}}>"
  end
end