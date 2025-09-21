class LogLineParser
  def initialize(line)
    @line = line
    /\[(?<level>.*)\]:\s+(?<message>.*)/ =~ @line
    @log_level, @msg = level, message
  end

  def message
    @msg.strip
  end

  def log_level
    @log_level.downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
