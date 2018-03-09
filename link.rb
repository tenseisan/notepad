class Link < Post

  def initialize
    super
    @url = ''
  end

  def read_from_console
    puts "Адресс ссылки: "
    @url = STDIN.gets.chomp

    puts "Описание ссылки?: "
    @text = STDIN.gets.chomp
  end

  def to_strings
    time_string = "Создано: #{@created_at.strftime("%Y.%m.%d, %H.%M.%S")} \n\r \n\r"
    [@url, @text, time_string]
  end
end