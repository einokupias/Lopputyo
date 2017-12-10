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

	file {'/etc/ufw/ufw.conf':
		content => template ("firewall/ufw.conf"),
	}

	service {'ufw':
		ensure => running,
		enable => true,
	}
}
