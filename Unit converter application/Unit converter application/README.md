#  Solution for possible permission issues when build (Command PhaseScriptExecution failed with a nonzero exit code)
If, during build or run, you come across an error that says '/Users/danielghebrat/Google Drive/Shared folders/MNAD 2021 cw/Coursework/Unit converter application/Pods/Target Support Files/Realm/Realm-xcframeworks.sh' permission denied

open terminal and change permissions 

chmod a+x '{your path}/Unit converter application/Pods/Target Support Files/Realm/Realm-xcframeworks.sh'

