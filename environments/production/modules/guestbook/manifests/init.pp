include "mysql"
#include "java"
#include "jboss"
include "nginx"
include "mysql::server"

class guestbook{

class {'nginx': }

nginx::resource::vhost {'prod-jboss':
listen_port => 81,
proxy => 'http://192.168.3.110:8080/',
}

exec {'download_app':
command => '/usr/bin/wget http://www.cumulogic.com/download/Apps/guestbookapp.zip -O /tmp/app.zip',
}
exec {'unzip_app':
command => "/usr/bin/unzip /tmp/app.zip -d /opt/jboss-6.1.0.Final/server/default/deploy",
}

file { "/opt/jboss/server/default/deploy/mysql-ds.xml":
    source => "puppet://guestbook/files/mysql-ds.xml"
}


mysql::grant { 'guestbook':
  mysql_privileges => 'ALL',
  mysql_password => 'demodemo',
  mysql_db => 'guestbook',
  mysql_user => 'demo',
  mysql_host => 'localhost',
  mysql_db_init_query_file => '/opt/jboss-6.1.0.Final/server/default/deploy/guestbookapp/guestbookmysqldump.sql',
}

}
