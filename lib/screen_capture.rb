class ScreenCapture
  def self.capture(url, file, width=1024, height=800)
    script = RUBY_PLATFORM =~ /darwin/ ? 'phantomjs' : 'phantomx11'
    command = "#{script} #{File.expand_path(File.dirname(__FILE__)+'/..')}/src/screen_capture.js #{url} #{file} #{width} #{height}"
    puts "Executing: #{command}"
    value = `#{command}`
    puts "Command: #{value}"
  end
end