# a manifest that kills a process named killmenow

exec { 'killmenow':
  command     => '/usr/bin/pkill killmenow',
  provider    => 'shell',
  onlyif      => '/usr/bin/pgrep -x killmenow',
  refreshonly => true,
}