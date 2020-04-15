Pod::Spec.new do |s|
  s.name         = "DDAntennaLogger"
  s.version      = "2.0.0"
  s.summary      = "A custom CocoaLumberjack logger for remote logging through Antenna"

  s.description  = <<-DESC
                   A custom CocoaLumberjack logger for remote logging through Antenna.

                   See:

                   * [Antenna](https://github.com/mattt/Antenna)
                   * [CocoaLumberjack](https://github.com/CocoaLumberjack/CocoaLumberjack)
                   * [Post: Remote Logging using CocoaLumberjack, Antenna and DDAntennaLogger](http://marius.me.uk/blog/2015/04/remote-logging-using-cocoalumberjack-antenna-ddantennalogger/)
                   DESC

  s.homepage     = "https://github.com/mokagio/DDAntennaLogger"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Giovanni Lodi" => "giovanni.lodi42@gmail.com" }
  s.social_media_url   = "http://twitter.com/mokagio"
  s.platform     = :ios, "10.0"
  s.source       = { :git => "https://github.com/jamesstout/DDAntennaLogger.git", :tag => s.version }
  s.source_files  = "DDAntennaLogger"
  s.requires_arc = true
  s.dependency "Antenna", "~> 3.0.0"
  s.dependency "CocoaLumberjack", "~> 3.6.1"
end
