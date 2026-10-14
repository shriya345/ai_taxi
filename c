1. Download:
   https://sourceforge.net/projects/metasploitable/
2. Extract ZIP → find Metasploitable.vmdk.
3. VirtualBox → New:
   Name: Metasploitable
   Type: Linux
   OS: Linux 2.6
   Version: Ubuntu (32-bit)
            / Other Linux (32-bit)
   ISO: None
4. Existing Virtual Hard Disk → folder icon
   → Metasploitable.vmdk → Finish.
5. Metasploitable → Settings → Network
   → Adapter 1 → Host-only Adapter.
6. Kali → same Host-only Adapter.
7. Start Metasploitable.
   Login: msfadmin / msfadmin
8. Terminal: ifconfig
   → Note eth0 inet IP.
9. Start Kali → Terminal:
   ping -c 4 <Metasploitable-IP>
10. Firefox:
    http://<Metasploitable-IP>/dvwa
11. Login: admin / password
    Create/Reset Database if asked.
12. DVWA Security → Low → Submit
    → Command Execution.
13. Enter one at a time:
    127.0.0.1
    127.0.0.1; ls
    127.0.0.1; pwd
    127.0.0.1; whoami
    127.0.0.1; ls -la
    127.0.0.1; ifconfig
14. Submit each → observe output.
