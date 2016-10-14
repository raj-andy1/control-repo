# /etc/puppetlabs/code/environments/production/site/win/manifests/winperm.pp
class win::winperm {
  acl { 'C:\Users\Administrator\Pictures\collage.png':
  target  =>  'C:\Users\Administrator\Pictures\collage.png',
  permissions =>  [
    { identity  =>  'testuser01', rights  =>  ['write','execute'], perm_type =>  'deny' }
    { identity  =>  'testgroup01', rights  =>  ['write','execute'], perm_type =>  'allow' }
  ],
    inherit_parent_permissions  =>  false,
  }
}
