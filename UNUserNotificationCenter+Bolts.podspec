Pod::Spec.new do |s|
  s.platform = :ios
  s.ios.deployment_target = '9.0'
  s.name = "UNUserNotificationCenter+Bolts"
  s.summary = "Bolts wrapper for UNUserNotificationCenter"
  s.version = "0.1.0"
  s.license = { :type => "MIT", :file => "LICENSE" }

  s.author = { "Felix Dumit" => "felix.dumit@gmail.com" }
  s.homepage = "https://github.com/felix-dumit/UNUserNotificationCenter-Bolts"
  s.source = { :git => "https://github.com/felix-dumit/UNUserNotificationCenter-Bolts.git", :tag => "#{s.version}"}
  s.framework = "UserNotifications"
  s.dependency 'Bolts/Tasks'
  s.source_files = "UNUserNotificationCenter+Bolts.{h,m}"
end