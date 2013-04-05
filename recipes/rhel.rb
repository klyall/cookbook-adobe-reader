#
# Cookbook Name:: adobe-reader
# Recipe:: rhel
#
# # Copyright 2011, Keith Lyall
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

tmp_file = "/tmp/#{node['adobe-reader']['rpm_file']}"

remote_file tmp_file do
  source node['adobe-reader']['rpm_url']
end

rpm_package 'adobe-reader' do
  action :install
  source tmp_file
  provider Chef::Provider::Package::Rpm
end

packages = %w{nspluginwrapper AdobeReader_enu}
 
packages.each do |pkg|
  package pkg
end
