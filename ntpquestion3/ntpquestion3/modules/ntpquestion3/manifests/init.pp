class ntpquestion3 {
  package {'ntp':
    ensure => present,
    }

  # Implemented Using datacenter custom fact in lib/facter/datacenter.rb
  if $datacenter =='TT' {
    file {'/etc/ntp.conf':
      ensure  => present,
      content => template("test/TT.erb"),
    }
  } 
  else {
    file {'/etc/ntp.conf':
      ensure  => present,
      content => template("test/PX.erb"),
    }
  }
  service {'ntpd':
    ensure => running,
    enable => true,
  }
}

