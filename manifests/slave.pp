class devns::slave{

   class { 'powerdns':
                db_password => 'password',
                db_root_password => 'password',
        }
	
	powerdns::config { 'slave':
        ensure => present,
        setting => 'slave',
        value => 'yes',
        type => 'authoritative',
        }

}
