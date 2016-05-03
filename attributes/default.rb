default[:plex_media_server][:package][:version] = '0.9.16.6.1993-5089475'
default[:plex_media_server][:package][:filename] = "plexmediaserver_#{node[:plex_media_server][:package][:version]}_amd64.deb"
default[:plex_media_server][:package][:url] = "https://downloads.plex.tv/plex-media-server/#{node[:plex_media_server][:package][:version]}/#{node[:plex_media_server][:package][:filename]}"
default[:plex_media_server][:package][:local_dir] = '/opt'
default[:plex_media_server][:package][:local_path] = ::File.join(node[:plex_media_server][:package][:local_dir], node[:plex_media_server][:package][:filename])

default[:plex_media_server][:preferences] = {
  'AcceptedEULA' => '1',
  'CertificateVersion' => '2',
  'customConnections' => '',
  'enableAirplayDolbyDigital' => '1',
  'FirstRun' => '0',
  'FriendlyName' => 'Plex',
  'MachineIdentifier' => '',
  'ManualPortMappingMode' => '1',
  'MetricsEpoch' => '1',
  'PlexOnlineMail' => '',
  'PlexOnlineToken' => '',
  'PlexOnlineUsername' => '',
  'ProcessedMachineIdentifier' => '',
  'PublishServerOnPlexOnlineKey' => '1',
  'ScheduledLibraryUpdateInterval' => '86400',
  'ScheduledLibraryUpdatesEnabled' => '1'
}
