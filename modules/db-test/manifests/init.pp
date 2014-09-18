# Copyright 2014 Your name here, unless otherwise noted.

class db-test {

mysql::db { 'test_mdb':
  user     => 'testuser',
  password => 'pass',
  host     => 'localhost',
  grant    => ['ALL'],
}

}
