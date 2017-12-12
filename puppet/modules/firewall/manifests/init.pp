class firewall {
	
	package {"ufw":
		ensure => "installed",
		allowcdrom => true,		
	}

	file {'/etc/ufw/user.rules':
		content => template ("firewall/user.rules"),
		notify => Service["ufw"],
	}
	
	file {'/etc/ufw/user6.rules':
		content => template ("firewall/user6.rules"),
		notify => Service["ufw"],
	}

	file {'/etc/ufw/ufw.conf':
		content => template ("firewall/ufw.conf"),
		notify => Service["ufw"],

	}

	service {'ufw':
		ensure => "running",
		enable => true,
	}
}
