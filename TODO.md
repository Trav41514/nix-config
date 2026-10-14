- Set nh environment variables
- Set Discord user
- Stylix
- Move codium and kitty into user
- Split programs into system and user
- Samba
- FTP
- arr
- QBT
- Avahi
- lm_sensors

- NetworkManager
  * Creates two users by default that aren't needed
    (nm-iodine and nm-openvpn)
    Fixing this would involve changing the nixpkg? Feasible for autistic needs?
  * WPA supplicant is running constantly, as opposed to on demand. Is there a solution?