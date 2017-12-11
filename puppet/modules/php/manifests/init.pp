class php {

	package {'libapache2-mod-php':
		ensure => 'present',
	}

	file { '/etc/apache2/mods-available/php7.0.conf':
		content => template ('php/php7.0.conf'),
	}

	file { '/etc/apache2/mods-enabled/dir.conf':
		content => template ('php/dir.conf'),
	}
}
