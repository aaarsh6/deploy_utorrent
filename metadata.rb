name  'utorrent-web'
maintainer       'dfang'
maintainer_email 'df1228@gmail.com'
license          'All rights reserved'
description      'Installs/Configures utorrent-server'
version          '0.1.0'

recipe "utorrent-server::default", "Installation"

%w{ ubuntu }.each do |os|
  supports os
end

