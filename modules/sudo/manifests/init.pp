class sudo {
	Exec {	
        path => [
            '/usr/local/bin',
            '/opt/local/bin',
            '/usr/bin', 
            '/usr/sbin', 
            '/bin',
            '/sbin'
        ],
        logoutput => true,
    }

    exec { 'apt update':
        command => '/usr/bin/apt update',
    }

    package { 'sudo': 
        ensure => installed,
        require => Exec['apt update'],
    }
}


