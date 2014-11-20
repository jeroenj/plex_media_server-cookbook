default[:plex_media_server][:apt][:uri] = 'http://shell.ninthgate.se/packages/debian'
default[:plex_media_server][:apt][:distribution] = 'wheezy'
default[:plex_media_server][:apt][:components] = %w(main)
default[:plex_media_server][:apt][:key] = 'http://shell.ninthgate.se/packages/shell-ninthgate-se-keyring.key'

default[:plex_media_server][:preferences] = {
  'AcceptedEULA' => '1',
  'enableAirplayDolbyDigital' => '1',
  'FirstRun' => '0',
  'FriendlyName' => 'Plex',
  'MachineIdentifier' => '',
  'ManualPortMappingMode' => '1',
  'PlexOnlineMail' => '',
  'PlexOnlineToken' => '',
  'PlexOnlineUsername' => '',
  'ProcessedMachineIdentifier' => '',
  'PublishServerOnPlexOnlineKey' => '1',
  'ScheduledLibraryUpdateInterval' => '86400',
  'ScheduledLibraryUpdatesEnabled' => '1'
}
