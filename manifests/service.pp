class nginx::service(
  String $ensure       = $::nginx::service_ensure,
  String $service_name = $::nginx::service_name,
  String $pattern      = $::nginx::service_pattern,
  Boolean $enable      = $::nginx::service_enable,
  Boolean $hasstatus   = $::nginx::service_hasstatus,
  Boolean $hasrestart  = $::nginx::service_hasstatus,
) {
  service { 'nginx':
    ensure     => running,
    name       => 'nginx',
    enable     => $enable,
    hasstatus  => $hasstatus,
    hasrestart => $hasrestart,
    pattern    => $pattern,
  }
}
