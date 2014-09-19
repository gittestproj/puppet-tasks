node 'epbyminw3088node1' {
include "ntp"
include "mysql"
include "db-test"
} 

node 'epbyminw3088prod' {

package { 'unzip':
ensure=>'installed'
}
#include "java"
#include "jboss"
include "deploy"
}
