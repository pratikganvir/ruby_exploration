module A

  def self.a
    puts "A"
  end

  def a
    puts "B"
  end

end

class Test
  include A
end

Test.new.a
