name 'Cookbook'
maintainer 'Philip Kleinberg'
maintainer_email 'philipbk9811@gmail.com'
license 'all_rights'
description 'Installs/Configures Chef_Project'
long_description 'Installs/Configures Chef_Project'
version '0.1.0'
issues_url 'https://github.com/Kleinbp/Chef_Project/issues' if respond_to?(:issues_url)
source_url 'https://github.com/Kleinbp/Chef_Project' if respond_to?(:source_url)
chef_version '>= 14.0'


depends 'httpd'
depends 'ntp'
depends 'sqlite'

