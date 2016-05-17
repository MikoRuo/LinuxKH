class samba {

include samba::install
include samba::conf

Exec { path => ['/bin/' , '/sbin/' , '/usr/bin/' , '/usr/sbin/' ] }


}
