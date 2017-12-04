
class ssh {
        package {'ssh':
                ensure => present,
        }

        service {'ssh':
                ensure => "running",
                enable => "true",
        }
}

