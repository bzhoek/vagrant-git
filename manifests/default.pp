Exec { path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ] }
File { owner => 0, group => 0, mode => 0644 }

user { "alice":
  ensure => present,
  groups => 'staff',
  managehome => true,
  shell => '/bin/bash'
}

user { "bob":
  ensure => present,
  groups => 'staff',
  managehome => true,
  shell => '/bin/bash'
}

package{ 'git':
  ensure => 'present'
}

file{ ['/opt/git']:
  ensure => 'directory',
  group => 'staff',
  mode => 770
}