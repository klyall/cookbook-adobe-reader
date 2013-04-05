name             "adobe-reader"
maintainer       "Keith Lyall"
maintainer_email "keith.lyall@gmail.com"
license          "Apache 2.0"
description      "Installs Adobe Reader"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.2.0"

depends          "apt" 

%w{ debian ubuntu centos redhat fedora }.each do |os|
  supports os
end

