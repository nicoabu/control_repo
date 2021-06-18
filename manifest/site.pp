node default {
  file {'/tmp/nico':
    ensure => file,
    content => 'Tuvieja en tanga.com',
  }
}
