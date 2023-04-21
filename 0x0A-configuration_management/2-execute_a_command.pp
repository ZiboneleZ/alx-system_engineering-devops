#Killing a process using exec

exec { 'pkill -f killmenow':
    path => ['/usr/bin', '/usr/sbin',],
    }