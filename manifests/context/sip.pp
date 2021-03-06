define asterisk::context::sip (
  $ensure = 'present',

  $username = true,
  $defaultuser = true,
  $template_name = false,

  $secret  = false,
  $context = false,

  $account_type = 'friend',
  $canreinvite = 'no',
  $host = 'dynamic',
  $insecure = 'no',
  $language = 'en',
  $nat = 'no',
  $qualify = '1000',
  $vmexten = '*97',

  $callerid = false,
  $calllimit = false,
  $callgroup = false,
  $mailbox = false,
  $md5secret = false,
  $pickupgroup = false,

  $disallow = [],
  $allow = [],
  $dtmfmode = false) {

  asterisk::dotd_file {"sip_${name}.conf":
    ensure  => $ensure,
    dotd_dir => 'sip.conf.d',
    content => template('asterisk/context/sip.erb'),
    filename => "${name}.conf",
  }
}
