lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
  s.name        = 'mv-slacker'
  s.version     = '0.0.1'
  s.date        = '2015-04-09'
  s.summary     = "A thing that lets you send Motivosity dollars via Slack"
  s.description = "A thing that lets you send Motivosity dollars via Slack"
  s.authors     = ["Jeremy Stanley"]
  s.email       = 'jstanley0@gmail.com'
  s.files       = `git ls-files`.split("\n")
  s.homepage    = 'http://github.com/jstanley0/mv-slacker'
  s.license     = 'Apache'
  s.bindir      = 'bin'
  s.executables << 'mv-slacker'
  s.required_ruby_version = '>= 1.9.3'
  s.add_dependency 'mvclient', '0.0.3'
  s.add_dependency 'httparty', '~> 0'
  s.add_dependency 'slack-rtmapi', '1.0.0.rc4'
end
