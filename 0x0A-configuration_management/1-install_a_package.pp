# 1-install_a_package.pp

# Install python3-pip if not already installed
package { 'python3-pip':
  ensure => installed,
}

# Install Flask version 2.1.0 using pip3
package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
  require  => Package['python3-pip'],  # Ensure python3-pip is installed beforehand
}
