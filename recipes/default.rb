remote_file node[:plex_media_server][:package][:local_path] do
  source node[:plex_media_server][:package][:url]
end

dpkg_package 'plexmediaserver' do
  source node[:plex_media_server][:package][:local_path]
end

template '/var/lib/plexmediaserver/Library/Application Support/Plex Media Server/Preferences.xml' do
  source 'Preferences.xml.erb'
  variables preferences: node[:plex_media_server][:preferences]
  user 'plex'
  group 'plex'
  notifies :restart, 'service[plexmediaserver]'
end

service 'plexmediaserver'
