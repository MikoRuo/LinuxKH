class samba::conf {

	file { '/etc/smbtest':
	  ensure => 'directory',
	  owner => 'nobody',
	  group => 'nogroup',
	  mode => '0777',
	
	}


	file { '/etc/samba/smb.conf':
	 notify => Service['smbd'],
	 require => Package['samba'],
	 content => template('samba/smb.erb'),
	
	}


	exec { 'ufw 139 tcp':
	command => 'sudo ufw allow 139/tcp', 

	}


	exec { 'ufw 445 tcp':
	command => 'sudo ufw allow 445/tcp',

	}

	exec { 'ufw 137 udp':
	command => 'sudo ufw allow 137/udp',
	
	}

	exec { 'ufw 138 udp ':
	command => 'sudo ufw allow 138/udp',


	}
	
}
