class firewall {
	
	package {'ufw':
		ensure => "installed",
	}

	file
