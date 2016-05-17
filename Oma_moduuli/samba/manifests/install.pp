class samba::install {

	 package { 'samba':
	 ensure => 'installed',

	}

	service { 'smbd':
    	ensure => 'running',
    	enable => true,

	}

}
