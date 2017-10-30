Facter.add(:interface_guids) do
   confine :kernel => :windows
   setcode do
     require 'win32/registry'
     reg_type = Win32::Registry::Constants::KEY_READ
     value = {}
     num = 0
     Win32::Registry::HKEY_LOCAL_MACHINE.open( 'SYSTEM\\CurrentControlSet\\services\\NetBT\\Parameters\\Interfaces', reg_type | 0x100) do |reg|
       reg.each_key do |key|
         value[num]=key.gsub("Tcpip_{","").gsub('}',"")
         num = num +1
       end
     end
     value
   end
end
