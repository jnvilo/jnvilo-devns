class devns::master{

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
    	value => '449b656f62dcdd8436646b2dc4b248dc77eda5f2',
    	type => 'authoritative',
	}

	powerdns::config { 'allow-axfr-ips':
        ensure => present,
        setting => 'allow-axfr-ips',
        value => '165.227.138.23/32,178.62.232.177/32',
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
