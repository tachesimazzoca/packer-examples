# packer-examples/centos-5

## SYNOPSIS

```shell
$ packer build \
  -var 'netinstall_iso_url=http://archive.kernel.org/centos-vault/5.11/isos/x86_64/CentOS-5.11-x86_64-netinstall.iso' \
  -var 'guest_addition_mode=upload' \
  -var 'disk_size=40960' \
  packer.json
```

### User Variables

* `netinstall_iso_url` (string) - The URL to the network install ISO file. The default value is `isos/CentOS-5.11-x86_64-netinstall.iso`, so you need to put the ISO file into the directory `isos` or specify a URL in [your preferred mirror](http://vault.centos.org/notonvault.html).
* `guest_additioins_mode` (string) - If the value is `upload` (default), the shell provisioner `scripts/vboxadd.sh` will install [VBoxGuestAdditions](https://www.packer.io/docs/builders/virtualbox-iso.html#guest-additions). In other words, specify `disable` if not necessary.
* `disk_size` (integer) - The size (MB) of the storage to create. The default value is `40960` (40GB).
