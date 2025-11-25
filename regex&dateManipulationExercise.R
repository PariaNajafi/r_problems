##first:
#regex

emails <- c("javad.rasooli@bpmn.edu", 
            "education@world.gov", 
            "babak.pirooz@peace.org",
            "@invalid.edu", 
            "sadeghi@apbarez.edu", 
            "hassaneskandari@codeman.ir")


trustedEmails <- grep(pattern = 
                        "^[A-Za-z0-9._+%!$*/=?{}'~&#-]+@[A-Za-z0-9-]+(.[A-Za-z0-9-]+)*.[A-Za-z]{2,}"
                      , x=emails)



newEmails <- sub(pattern = "@.*$", replacement = "@gsharif.edu", x=emails[trustedEmails])

newEmails

#"^[A-Za-z0-9\.+_%!$&*/=?{}~\'#]+@[A-Za-z0-9-]+(\.[A-Za-z0-9-]+)*\.[A-Za-z]{2,}" qalat
#!!! chera hichja nazasht escape bezaram!

#domain : 0 ya chand subdomain(adad, -,.,horuf), ba . ya - nmitune shuru beshe
#pasvand TLD : faqat horuf,haddeaqal 2 ta


##2nd:
#DATE MANIPULATION

#jul 28 1988

strptime(x= "jul 28 1988", format = "%b %d %Y")

#2011-11-15

strptime(x= "2011-11-15", format = "%Y-%m-%d")

#11/september/2001

strptime(x= "11/september/2001", format = "%d/%B/%Y")







