class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCxdVYMdAd9EHmc38jjYIzGn4vLU5yJp2+hPSZdOGIlaIWueF/cij9O9nyVIG9IK/zBlJcmV/1f8QSyKyE7iinCgH5aIedGBHlNpowNxuajCPIEHXzNUGWLbuyA1nRVq9jXRg7O+gO/8YD+tnQaK1Vu8J2ac08JlG1w7N7nIEBFNQ6mu8c8OgY2cEMApOVn66pyCYeetVjudhrKQglfudZ6paaISLvYr2weFPl57l+z4mzJUllwe3id2inlN499V5efLeQi7GwhANuwjt0Ckv+WmYs4r660rsLhHYTb436ixp8QVzwwwLPn78hWP+9Kh9a37p0LL9O82b5bhJs+zY1b',
	}  
}
