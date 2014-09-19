include "mysql"
include "java"
include "jboss"
include "nginx"

class guestbook{

{class nginx: }
nginx::resource::vhost {'epbyminw3088prod':
server_name => ['localhost'],
listen_port => 80
proxy => '192.168.3.110:8080'
}



}
