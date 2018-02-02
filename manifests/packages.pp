class devns::packages{

	package{"bind-utils": ensure=>installed } 
	package{"poweradmin": 
		ensure=>installed,
		require=>Yumrepo["rpmbrew_repo"],
		notify=>Service["httpd"]
		} 
}
