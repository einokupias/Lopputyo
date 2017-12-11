class skel {
	
	file { '/etc/skel/public_html':
		ensure => 'directory',
	}

	file { '/etc/skel/public_html/index.html':
		content => template ('skel/index.html'),
	}

	file { '/etc/skel/public_html/index.php':
                content => template ('skel/index.php'),
        }

}
