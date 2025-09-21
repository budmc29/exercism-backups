class LogLineParser
  def initialize(line)
    @line = line
    @log_level_raw, @message = line.split(":")
  end

  def message
    @message.strip
  end

  def log_level
    @log_level_raw.scan(/\[(.*)\]/).last.last.downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
