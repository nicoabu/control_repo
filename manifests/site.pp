node default {
  file {'/root/nico':
    ensure => file,
    content => 'Tuvieja en tanga.com',
  }
}
