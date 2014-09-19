class deploy {

exec {'download_app':
command => '/usr/bin/wget http://www.cumulogic.com/download/Apps/testweb.zip -O /tmp/app.zip',
}

exec {'unzip_app':
command => "/usr/bin/unzip /tmp/app.zip -d /opt/jboss-6.1.0.Final/server/default/deploy",
}

}
