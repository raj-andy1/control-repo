class cis_rhel7::rule::rule_9_2_19 {

# includes Rules:
# 9.2.19 - Check for Presence of User .netrc Files (Scored)

$netrc = $::cis_benchmarks['netrc']

if $netrc != ''
{
    notify { "(9.2.19) - .netrc files found in: ${netrc}": }
}


} #EOF
