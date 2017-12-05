class apache {
	
	package {"apache2":
		ensure => "installed",
		allowcdrom => true,
	}

	file { '/etc/apache2/mods-available/userdir.load':
		ensure => 'link',
		target => '/etc/apache2/mods-available/userdir.load',
		require => Package["apache2"],
		notify => Service["apache2"],
	}
	
	file { '/etc/apache2/mods-available/userdir.conf':
		ensure => 'link',
		target => '/etc/apache2/mods-available/userdir.conf',
		require => Package["apache2"],
		notify => Service["apache2"],
	}

	service {'apache2':
		ensure => running,
		enable => true,
	}
}
