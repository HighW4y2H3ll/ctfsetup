From debian:buster-slim

Run dpkg --add-architecture i386
Run apt-get update && apt-get install -y libc6:i386 libncurses5:i386 libstdc++6:i386 zlib1g-dev:i386 wget curl

#Debug
#Run apt-get install -y strace

Env target testshell

Run useradd ${target}
Run groupadd pwn
#Run useradd pwn

Run mkdir -p /home/${target}
Run chown root:pwn /home/${target}
Run chmod 775 /home/${target}

Workdir /home/${target}
Copy ${target} ${target}
Copy flag flag
Copy bash /bin/bash
Copy sh /bin/sh

Run chown root:pwn flag
Run chown ${target}:pwn ${target}
Run chmod 440 flag
Run chmod 550 ${target}
Run chmod g+s ${target}

#Entrypoint ["/bin/sh"]
