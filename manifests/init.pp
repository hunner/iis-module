class iis {
  dism { 'IIS-WebServer':
    ensure => present,
  }
  iis::site { 'cc2':
    hostname  => 'cc2-pink.slo-dev.truelink.com',
    protocol  => 'https'
    ipaddress => '10.20.40.5',
    port      => '443',
    certhash  => 'b63293e9c24f7fda4c671beac4a0eff29e0d3b52 ',
    appid     => '5a599f4f-02dc-4120-8646-74fcbc5b4827',
    require   => Dism['IIS-WebServer'],
  }
  iis::site { 'cc2ws':
    hostname  => 'cc2ws-pink.slo-dev.truelink.com',
    protocol  => 'https'
    ipaddress => '10.20.40.7',
    port      => '443',
    certhash  => 'b63293e9c24f7fda4c671beac4a0eff29e0d3b52 ',
    appid     => '5a599f4f-02dc-4120-8646-74fcbc5b4827',
    require   => Dism['IIS-WebServer'],
  }
}
