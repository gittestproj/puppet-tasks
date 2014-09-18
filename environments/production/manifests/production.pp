node 'puppet-prod'{
include "ntp"
include "nginx"
include "mysql"

mysql::db{'prod_db':
user => 'prod_user',
pass => 'secretpass',
database => 'prod_db',
grant => ['ALL'],
}
}
