class firewall_templates::master {
  firewall { '005 Accept master ports':
    proto  => 'tcp',
    dport  => ['443','8140','8142','61613'],
    action => 'accept',
  }
}
