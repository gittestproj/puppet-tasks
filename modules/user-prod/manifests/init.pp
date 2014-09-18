# Copyright 2014 Your name here, unless otherwise noted.
#

include mysql

class user-prod {

class yum::repos::nginx {
  package { 'nginx-release':
    ensure => installed,
    source => 'http://nginx.org/packages/centos/6/noarch/RPMS/nginx-release-centos-6-0.el6.ngx.noarch.rpm',
  }
}

package { 'nginx':
ensure=>'installed'
}

service { 'nginx':
ensure=>'running'
}

mysql::db{'prod_db':
user => 'prod_user',
password => 'secretpass',
grant => ['ALL']
}

}
