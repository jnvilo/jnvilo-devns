class devns::slave{
	
	powerdns::config { 'slave':
        ensure => present,
        setting => 'slave',
        value => 'no',
        type => 'authoritative',
        }

}
