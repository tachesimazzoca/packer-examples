# packer-examples/centos-6

## SYNOPSIS

```shell
$ packer build \
    -var 'minimal_iso_url=http://ftp.iij.ad.jp/pub/linux/centos/6.9/isos/x86_64/CentOS-6.9-x86_64-minimal.iso' \
    -var 'guest_addition_mode=upload' \
    -var 'disk_size=40960' \
    packer.json
```

### User Variables

* `minimal_iso_url` (string) - The path to the minimal ISO file. The default value is `isos/CentOS-6.9-x86_64-minimal.iso`, so you need to put the ISO file into the directory `isos` or specify a URL in [your preferred mirror](http://isoredirect.centos.org/centos/6.9/isos/x86_64/).
* `guest_additioins_mode` (string) - If the value is `upload` (default), the shell provisioner `scripts/vboxadd.sh` will install [VBoxGuestAdditions](https://www.packer.io/docs/builders/virtualbox-iso.html#guest-additions). In other words, specify `disable` if not necessary.
* `disk_size` (integer) - The size (MB) of the storage to create. The default value is `40960` (40GB).
