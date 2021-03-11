# EngelSolar VPN
### VERSION HISTORY
- 0.0 Initial Release 2019/02/05 
# Creating a new user/modem
`ssh vpn@vpn.engelsolar.es -p 2222`
`password: VpNS3rver`
```
$ sudo bash ~/openvpn/engelsolar-vpn.sh
What do you want to do?
   1) Add a new client
   2) Revoke an existing client
   3) Exit
Select an option [1-3]: 

```
* Notes: names shoul be a single world, no special chars.
* Usually, VPN IP will be 10.10.0.x and remote LAN IP 10.10.x.0
* Remote LAN IP should match the one configured at the server.
* Remote LAN IP must be null for non-site users, i.e. people willing access to the VPN
* Edit /var/www/sites.php and add new Site.

# Doing a backup
`ssh vpn@vpn.engelsolar.es -p 2222`
`password: VpNS3rver`
```
mkdir -p ~/openvpn
cd ~/openvpn
sudo tar cvfz server.tgz --exclude-backups --exclude '*.old' ~/openvpn /etc/openvpn/ /var/www/html/*  
exit

```
* Local PC
```
mkdir -p ~/EngelSolar/server
cd ~/EngelSolar/server
scp -P 2222 vpn@vpn.engelsolar.es:openvpn/server.tgz .
rm -fr backup
mkdir -p backup 
tar xvfz server.tgz -C backup
=======
```
