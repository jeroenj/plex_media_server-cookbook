apt_repository 'plexmediaserver' do
  uri node[:plex_media_server][:apt][:uri]
  distribution node[:plex_media_server][:apt][:distribution]
  components node[:plex_media_server][:apt][:components]
  key node[:plex_media_server][:apt][:key]
end

package 'plexmediaserver'

template '/var/lib/plexmediaserver/Library/Application Support/' + 
         'Plex Media Server/Preferences.xml' do
  source 'Preferences.xml.erb'
  variables preferences: node[:plex_media_server][:preferences]
  user 'plex'
  group 'nogroup'
  action :create_if_missing
  notifies :restart, 'service[plexmediaserver]'
end

service 'plexmediaserver'
