# typos in the php setting local file
# https://wordpress.stackexchange.com/questions/63141/in-what-order-does-wordpress-load-plugin-files
# must strace on the child process spawned by apache 
exec {'fix_wordpress':
  command => "sed -i 's/phpp/php/g' /var/www/html/wp-settings.php",
  path    => '/bin',
}
