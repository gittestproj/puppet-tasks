node 'epbyminw3088node1' {
include "ntp"
include "mysql"
include "db-test"
} 

node 'epbyminw3088prod' {
#include "mysql"
include "user-prod"
}
