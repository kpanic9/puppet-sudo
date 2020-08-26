node default {
    Exec {	
        path => [
            '/usr/local/bin',
            '/opt/local/bin',
            '/usr/bin', 
            '/usr/sbin', 
            '/bin',
            '/sbin'],
        logoutput => true,
    }

    exec { 'test':
	    command => 'pwd',
    }

    include sudo
}