name             'tomcat'
maintainer       'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license          'Apache 2.0'
description      'Installs and configures Apache Tomcat'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.3.0'

depends 'java', '>= 1.36'
depends 'openssl'
depends 'yum-epel'
depends 'compat_resource', '>= 12.7.3'

%w(ubuntu debian redhat centos suse opensuse scientific oracle amazon).each do |os|
  supports os
end

recipe 'tomcat::default', 'Installs and configures Tomcat'
recipe 'tomcat::users', 'Setup users and roles for Tomcat'

source_url 'https://github.com/chef-cookbooks/tomcat' if respond_to?(:source_url)
issues_url 'https://github.com/chef-cookbooks/tomcat/issues' if respond_to?(:issues_url)
