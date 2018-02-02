# Class: devns
# ===========================
#
#  This is the devns class that setups a PowerDns Base Server.
#
# Parameters
# ----------
#
# No parameters
#
# Variables
# ----------
#	No variables
#
# Examples
# --------
#
# @example
#    class { 'devns':
#    }
#
# Authors
# -------
#
# Author Name <jasonviloria@zinnianet.com>
#
# Copyright
# ---------
#
# Copyright 2018 Your name here, unless otherwise noted.
#
class devns {

	class { 'powerdns':
 	   	db_password => 'password',
    		db_root_password => 'password',
	}

	class { '::apache':
  		mpm_module => 'prefork',
	}
	include ::apache::mod::php
	

	class { 'devns::packages':
		require => Yumrepo['rpmbrew_repo'] ,
	} 
	

	 yumrepo { 'rpmbrew_repo':
   		    enabled  => 1,
    		    descr    => 'Default RPMBrew repo',
    		    baseurl  => 'http://yum.rpmbrew.com/el/7/x86_64',
    		    gpgcheck => 0,
  	}

	class { 'firewalld': }

 	firewalld_service { 'Allow SSH from the external zone':
  		ensure  => 'present',
  		service => 'ssh',
  		zone    => 'public',
	}
 	firewalld_service { 'Allow HTTP':
  		ensure  => 'present',
  		service => 'http',
  		zone    => 'public',
	}

	

}
