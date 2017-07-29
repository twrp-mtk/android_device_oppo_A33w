## TWRP device tree for Oppo Neo 7 (A33w)

Add to `.repo/local_manifests/A33w.xml`:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
	<project path="device/oppo/A33w" name="android_device_oppo_A33w" remote="liquidporting" revision="android-5.1" />
</manifest>
```

Then run `repo sync` to check it out.

To build:

```sh
. build/envsetup.sh
lunch omni_A33w-eng
make -j5 recoveryimage
```
