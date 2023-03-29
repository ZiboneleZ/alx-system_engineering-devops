package { 'python3-pip':
  ensure => 'installed',
}

exec { 'install-flask':
  command => '/usr/bin/pip3 install flask==2.1.0',
  unless  => '/usr/bin/pip3 freeze | /bin/grep Flask | /bin/grep -q 2.1.0',
  require => Package['python3-pip'],
}

