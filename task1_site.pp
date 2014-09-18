node 'epbyminw3088node1'{
include ntp
package { 'nginx': ensure=>'installed'}
service { 'nginx': ensure=>'running'}
}
