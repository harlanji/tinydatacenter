{:title "Reliable Operations Guide"
 :layout :post
 :tags ["guide-wip"]}

### 0. Approacch


Passwordless? 2FA? TBD!

Would like to use YubiKey

Encrypted home partition is good because the image can be copied and transferred (backed up easily).


Encryption at the system level can be used to protect integrity of files (eg modification of binaries via recovery).



Passwordless?

Audio microphone can pick up password. This can be miticated using a hardware entry device. This is similar to a 2fa, maybe better because it adds a 3rd piece, but worse because it's maintenene. And like tape over the webcam, it looks awkward at first.



### 1. Materials

### 2. Maintenence

### 3. Recovery

### 4. Common issues

#### Unexpected Reboot

Things that run using Docker and the `--restart always` option will recover upon reboot. A major reason to build apps that don't use local disk storage for important information is that the programmer must take care to write their storage code right, or trust the code of another. The latter option is preferred; so why isn't a simple library acceptable? Most of the time it is. In the event that you have multiple Pis, read on.

Docker swarm is a tool useful for failover and scaling, we will cover how it can be used for some of our applications in an upcoming episode.

#### SD Card can not be read

You've been doing backups, right? You'll need to flash the backup onto an SD card and boot from that point. Your apps are keepings state in a durable store, right?

At minimum, a pi with a spare SD card can be rotated on a schedule that works for your application. In the old days we have to lug around large rotational hard disks (heavier than laptops, and sensitive). More advanced options can be covered later.


#### User lost password

If you have root access then you can change the password of the locked out user


#### User lost token 


If you have root access then you can change the key that is issued to the user or create a new copy of their key if you have access to the offline omater.




#### Root lost pasword


If you create a 








#### Operator ran out of money



#### Disk ran out of space


#### Application can't launch because there is not enough memory

You'll need to fid an application to stop. If you are totally full, then you will need another raspi. It may be advisiable to go with something like a C2 which has twice as much memory (and a more powerful CPU).

#### Video is choppy (when I plug in my mic)


The likely cause is the USB not having enough bandwidth. If you are doing a lot of AV work you may want to consider an XU4 with has a more powerful USB 3.0. (How many video/audio streams at 720p/1080p?). You'll also want to think about cooling, because the fan is loud and disturbs sensitive mics and the stock heat sync man not work well at heavy load. 


#### RasPi shuts down randomly


The likely cause here is that it is overheating. Less likely is that a program is crashing and brining the whole system down. (How can the pi be configured to restart after a reboot? Can a flag be set before the safety shutdown?)

