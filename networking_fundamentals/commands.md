1. Ping

The `ping` command is used to check the connectivity between two nodes on an IP network. It sends out packets and measures the round-trip time, which helps assess host availability and network latency. It is an essential tool for basic network diagnostics.

```
ping 8.8.8.8
ping google.com
```

2. Traceroute

The `traceroute` command traces the path that data packets take from your system to a specified host on a network. It lists the IP addresses of all intermediate routers (hops) on that path and the time it takes to reach each one. This helps in localizing routing issues and identifying points of high network latency.

```
traceroute devdojo.com
```

3. Curl

The `curl` command (client URL) is a powerful tool for transferring data using various protocols, such as HTTP, FTP, IMAP, and others. It allows you to download files, send HTTP requests to web servers, and interact with APIs. It is a versatile utility for working with network content directly from the command line.

```
curl https://devdojo.com
```
Get headers of you domain:
```
curl -IL https://devdojo.com
```
Download files:
```
curl http://someurl.com/filename.zip --output filename.zip
```

4. Wget

The `wget` command is a command-line utility for non-interactive downloading of files from web servers. It can resume interrupted downloads, work with proxy servers, and download files recursively. `wget` is particularly useful for scripting and automated downloads.

```
wget http://someurl.com/filename.zip
```

5. Dig

The `dig` command (Domain Information Groper) is used to query DNS records and retrieve information from DNS servers. It allows you to view different types of records (A, MX, NS, CNAME) for domains and is a powerful tool for network administrators. Using `dig`, you can check the functionality of the DNS system and identify errors in domain configurations.

Check A record:
```
dig a yourdomain.com
```
Check mx record:

```
dig mx yourdomain.com
```

6. Whois

The `whois` command is a utility that provides registration information for a domain name, IP address, or internet autonomous system. It allows you to find out who owns a domain, their contact information, registration date, expiration date, and other technical details. It is a fundamental tool for checking ownership data for internet resources.


```
whois devdojo.com
```

7. Ssh

The `ssh` command (Secure Shell) is used for securely connecting to and managing remote computers over a network. It provides an encrypted communication channel that protects data from interception, and it allows you to execute commands and transfer files on the remote machine. It is a key tool for system administrators.

Connect to a remote server:
```
ssh user_name@remote_server_ip
```
Connect to server with specify custom ssh port:
```
ssh root@192.168.88.132 -p1100
```

8. Scp and rsync

`scp` (Secure Copy) and `rsync` are two commands for copying files and directories between local and remote systems.

- `scp` is a simpler tool that uses the SSH protocol for secure data transfer, acting like a standard cp command over a network.

- `rsync` is a more powerful tool that, in addition to secure transfers, also supports incremental copying by only transferring file changes, making it more efficient for synchronizing large amounts of data.

```
scp filename.txt root@your_server.com:/home/user_name/
```
```
rsync -avz /source_directory/ user@remote_server:/destination_directory/
rsync -avz user@remote_server:/source_directory/ /destination_directory/
```

9. Ifconfig

The `ifconfig` command (interface configuration) is used to view and configure network interfaces on Unix-like operating systems. It displays details such as the IP address, MAC address, subnet mask, and other information about network adapters. While `ifconfig` is still widely used, in modern systems, it has been superseded by the more powerful `ip` command.

10. Ip

The `ip` command is a modern utility that replaces the deprecated ifconfig and other tools for network configuration. It allows you to configure routing, network interfaces, policies, and other network parameters. The `ip` command provides a single, unified, and powerful interface for network management.

```
ip a
```

11. Telnet

The `telnet` command is used to establish a text-based connection with a remote server using the Telnet protocol. It allows you to open sessions with remote machines and execute commands, but it transfers data in an unencrypted format. For this reason, `telnet` is considered insecure and has been replaced by `ssh` for administration purposes.

```
telnet devdojo.com 80
```

12. Nc

The `nc` command (netcat) is a versatile tool often referred to as the "Swiss Army knife" of networking. It allows you to establish connections, listen on ports, scan networks, and transfer data over TCP and UDP. `nc` is a very flexible tool for diagnosing and debugging network connections.

The below command starts netcat in listen mode (-l) on port 1234. It "opens" the port, waiting for an incoming connection. Once another client connects, anything sent to that port will be displayed in the terminal, and vice versa. This is useful for testing network connections, transferring files, or creating a simple chat.

```
nc -l 1234
```

13. Nmap

The `nmap` command (Network Mapper) is a powerful port scanner and a tool for network discovery and security auditing. It allows you to identify devices on a network, open ports, the services running on them, and their operating systems. `nmap` is a key tool for testing network security.

```
nmap -p 22 192.168.121.90
```


14. Netstat/ss

`netstat` (network statistics) and `ss` (socket statistics) are commands used to display network connection statistics.

- `netstat` is a traditional tool that shows open ports, routing tables, and active connections.

- `ss` is a modern, faster, and more powerful alternative that provides more detailed information about sockets. On newer systems, `ss` is the preferred choice.

```
netstat -plant | grep 80
netstat -plant | grep LISTEN
ss -lt
```