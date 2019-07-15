class MyFile
  attr_reader :handle

  def initialize(filename)
    @handle = File.new(filename, "r")
  end

  def show_content
    @handle.each { |line| puts line }
  end

  def finished
    @handle.close
  end
end

f = MyFile.new("../README.md")
f.show_content
f.finished
