class firewall {
	
	package {"ufw":
		ensure => "installed",
	}

	file {'/etc/ufw/user.rules':
		content => template ("firewall/user.rules"),
	}
	
	file {'/etc/ufw/user6.rules':
		content => template ("firewall/user6.rules"),
	}

	service {'ufw':
		ensure => running,
		enable => true,
	}
}
