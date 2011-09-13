class ScreenCapture
  def self.capture(url, file, width=1024, height=800)
    command = "phantomjs #{File.expand_path(File.dirname(__FILE__)+'/..')}/src/screen_capture.js #{url} #{file} #{width} #{height}"
    puts "Executing: #{command}"
    value = `#{command}`
    puts "Command: #{value}"
  end
end