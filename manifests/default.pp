Exec { path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ] }
File { owner => 0, group => 0, mode => 0644 }

user { "alice":
  ensure => present,
  managehome => true,
  shell => '/bin/bash'
}

user { "bob":
  ensure => present,
  managehome => true,
  shell => '/bin/bash'
}
