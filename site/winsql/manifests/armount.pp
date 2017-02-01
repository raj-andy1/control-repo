# /etc/puppetlabs/code/environments/production/site/winsql/manifests/armount.pp
# Mount an iso to a drive

class winsql::armount {
  $iso_source = 'C:\Users\Administrator\Downloads\SQLFULL_ENU.iso',
  $iso_drive = 'X',

  mount_iso { $iso_source:
    drive_letter  => $iso_drive,
  }
}
