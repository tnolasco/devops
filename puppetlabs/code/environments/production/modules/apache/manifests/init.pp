class apache {

	case $::osfamily {
                "RedHat": { $pacotes = [ "httpd" ] }
                "Debian": { $pacotes = [ "apache2" ] }
        }
	package{ $pacotes: ensure => present}
	file{"/var/www/html/index.html":
                source => "puppet:///modules/apache/index.html",
                ensure => present,
        }
}
