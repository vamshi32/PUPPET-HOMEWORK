class ntpquestion2 {
  package {'ntp':
    ensure => present,
    }

  file {'/etc/ntp.conf':
    ensure  => present,
    content => template("test/ntp.erb"),
    notify  => Service['ntpd']
    }

  service {'ntpd':
    ensure => running,
    enable => true,
    }
}

