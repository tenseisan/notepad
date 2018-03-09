class Post

  def initialize

    @created_at = Time.now
    @text = nil

  end

  def read_from_console
    # to do
  end

  def to_strings
    # to do
  end

  def file_path
    current_path = File.dirname(__FILE__)
    file_name = @created_at.strftime("#{self.class.name}_%Y-%m-%d_%H-%M-%S.txt")
    current_path + "/" + file_name
  end

  def save
    file = File.new(file_path)

    for item in to_strings do
      file.puts(item)
    end
    file.close
  end

end