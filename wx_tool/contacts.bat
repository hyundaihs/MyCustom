adb push contacts.vcf /sdcard/contacts.vcf

ping -n 3 127.1>nul

adb shell "am start -t "text/x-vcard" -d "file:///sdcard/contacts.vcf" -a android.intent.action.VIEW com.android.contacts"  