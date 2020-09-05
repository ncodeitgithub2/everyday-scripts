-list all VMs running in that physical server
vboxmanage list vms
vboxmanage list runningvms
vboxmanage startvm <name> --type separate

vboxmanage snapshot <vm-name> list  #show all the snapshots of a given VM

### take snapshot with timestamp - BEGIN 

#!/bin/bash
NOW=`date +"%m-%d-%Y%T"`
SNAPSHOT_NAME="UBUNTUSERVER_WEB_$NOW"
SNAPSHOT_DESCRIPTION="Snapshot taken on $NOW"

VBoxManage snapshot UBUNTUSERVER_WEB take "$SNAPSHOT_NAME" --description "$SNAPSHOT_DESCRIPTION"

### take snapshot with timstamp - END 

VBoxManage snapshot { uuid|vmname } restore { snapshot-name }
VBoxManage snapshot { uuid|vmname } edit { snapshot-name | --current } [--description=description] [--name=new-name]
VBoxManage snapshot { uuid|vmname } delete { snapshot-name }
VBoxManage snapshot { uuid|vmname } showvminfo { snapshot-name }


VBoxManage controlvm <vm-name>  acpipowerbutton #for stopping the VM 
