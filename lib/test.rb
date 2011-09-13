require 'screen_capture'
urls = %w(
http://www.google.com
http://www.beenverified.com
http://www.theoatmeal.com
http://www.rackspace.com
http://www.37signals.com
http://www.amazon.com
http://www.nytimes.com
http://www.collegehumor.com
http://www.whitehouse.gov
http://www.yahoo.com
http://www.apple.com
http://www.github.com)
url = ARGV[1] || urls[rand(urls.length)]
ScreenCapture.capture(url, '/tmp/goog.png')