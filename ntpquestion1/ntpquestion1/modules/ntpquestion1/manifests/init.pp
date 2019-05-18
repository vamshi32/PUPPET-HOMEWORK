class ntpquestion1 {
  package {'ntp':
    ensure => present,
    }

  file {'/etc/ntp.conf':
    ensure  => present,
    content => '
    server 127.127.1.0                  # local clock 
    server 0.rhel.pool.ntp.org iburst   # remote clock
    ',
    notify  => Service['ntpd']
    }

  service {'ntpd':
    ensure => running,
    enable => true,
    }
}
