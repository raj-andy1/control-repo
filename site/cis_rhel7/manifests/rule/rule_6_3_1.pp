class cis_rhel7::rule::rule_6_3_1 {

#includes Rules:
# 6.3.1 - Upgrade Password Hashing Algorithm to SHA-512 (Scored) 

$algo = $::cis_benchmarks['pw_hash']

if ($algo == '') {
    notify { '(6.3.1) - Password hashing algorithm is not set to SHA-512': }
}


} #EOF
