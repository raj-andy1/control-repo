# /etc/puppetlabs/code/environments/production/site/win/manifests/windom.pp
# Sample code that promotes a computer running Win2012 Server to a Domain Controller
class win::windom {
  class { 'windows_ad':
   install                => present,
   installmanagementtools => true,
   restart                => true,
   installflag            => true,
   configure              => present,
   configureflag          => true,
   domain                 => 'forest',
   domainname             => 'jre.local',
   netbiosdomainname      => 'jre',
   domainlevel            => '6',
   forestlevel            => '6',
   databasepath           => 'c:\\windows\\ntds',
   logpath                => 'c:\\windows\\ntds',
   sysvolpath             => 'c:\\windows\\sysvol',
   installtype            => 'domain',
   dsrmpassword           => 'password',
   installdns             => 'yes',
   localadminpassword     => 'Puppetlabs01',
 }
}
