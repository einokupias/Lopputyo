class php {

	package {'libapache2-mod-php':
		ensure => 'present',
	}

	file { '/etc/apache/mods-available/php7.0.conf':
		content => template ('php/php7.0.conf'),
	}

	service {'libapache2-mod-php':
		ensure => running,
		enable => true,
		notify => Service['apache2'],
	}
}
