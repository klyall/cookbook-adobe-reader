
default['adobe-reader']['apt_repo'] = 'http://archive.canonical.com/ precise partner'

default['adobe-reader']['rpm_file'] = 'adobe-release-i386-1.0-1.noarch.rpm'
default['adobe-reader']['rpm_url']  = "http://linuxdownload.adobe.com/adobe-release/#{node['adobe-reader']['rpm_file']}"

