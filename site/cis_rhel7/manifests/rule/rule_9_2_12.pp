class cis_rhel7::rule::rule_9_2_12 {

# includes Rules:
# 9.2.12 - Check That Users Are Assigned Valid Home Directories (Scored)

$valid = $::cis_benchmarks['validhome']

if $valid != ''
{
    notify { "(9.2.12) - Home directory of user does not exist: ${valid}": }
}


} #EOF
