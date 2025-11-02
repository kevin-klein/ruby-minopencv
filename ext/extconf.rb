require "mkmf"
require "rbconfig"

# If you need to detect macOS for special flags:
$CXXFLAGS << if /darwin/.match?(RbConfig::CONFIG["host_os"])
  " -stdlib=libc++ -std=c++17"
else
  " -std=c++17"
end

# Use pkg-config correctly: separate --cflags and --libs
opencv_cflags = `pkg-config --cflags opencv4`.strip
opencv_libs = `pkg-config --libs   opencv4`.strip

# Append the right bits to the right variables
$CXXFLAGS << " #{opencv_cflags}" unless opencv_cflags.empty?
$LDFLAGS << " #{opencv_libs}" unless opencv_libs.empty?

# Optional: print diagnostics while building
puts "CXXFLAGS: #{$CXXFLAGS}"
puts "LDFLAGS:  #{$LDFLAGS}"

# Name the extension the way you will `require` it:
# If you'll `require 'minopencv'`, use 'minopencv'
create_makefile("rb_minopencv")
