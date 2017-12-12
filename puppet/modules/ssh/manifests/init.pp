class ssh {
	package {'ssh':
		ensure => present,
		allowcdrom => true,
	}

	service {'ssh':
		ensure => "running",
		enable => true,
	}
}
