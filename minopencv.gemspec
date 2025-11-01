Gem::Specification.new do |s|
  s.name = "minopencv"
  s.version = "0.1.0"
  s.summary = "A ruby library with a binding to a very small subset of OpenCV"
  s.description = "A ruby library with a binding to a very small subset of OpenCV"
  s.authors = ["Kevin Klein"]
  s.email = "kevin.k1252@gmail.com"
  s.files = Dir["lib/**/*", "ext/**/*", "README.md", "LICENSE", "minopencv.gemspec"]
  s.homepage = "https://github.com/kevin-klein/ruby-minopencv"
  s.license = "GPL-3.0-or-later"
  s.extensions = ["ext/extconf.rb"]
end
