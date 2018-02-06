class devns::supermaster{

	class { 'powerdns':
 	   	db_password => 'password',
    		db_root_password => 'password',
	}
	

	powerdns::config { 'api':
    	ensure => present,
    	setting => 'api',
    	value => 'yes',
    	type => 'authoritative',
	}

	powerdns::config { 'api-key':
    	ensure => present,
    	setting => 'api-key',
    	value => 'keykey',
    	type => 'authoritative',
	}

	powerdns::config { 'allow-axfr-ips':
        ensure => present,
        setting => 'allow-axfr-ips',
        value => '192.168.0.0/16',
        type => 'authoritative',
        }

	powerdns::config { 'disable-axfr':
        ensure => present,
        setting => 'disable-axfr',
        value => 'no',
        type => 'authoritative',
        }

	powerdns::config { 'master':
        ensure => present,
        setting => 'master',
        value => 'yes',
        type => 'authoritative',
        }

	powerdns::config { 'slave':
        ensure => present,
        setting => 'slave',
        value => 'no',
        type => 'authoritative',
        }

}
