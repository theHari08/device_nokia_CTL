 Nokia 7.1 (codenamed _"CTL"_) is mid-range smartphone from Nokia.

Nokia 7.1 was announced and released in 2018, October.

## Device specifications

| Device       |   Nokia 7.1                                     |
| -----------: | :---------------------------------------------- |
| SoC          | Qualcomm SDM660 Snapdragon 636                  |
| CPU          | 8x Qualcomm® Kryo™ 260 up to 1.8GHz             |
| GPU          | Adreno 509                                      |
| Memory       | 4GB                                             |
| Shipped Android version | 8.1.0                                |
| Storage      | 64GB eMMC 5.1 flash storage                     |
| Battery      | Non-removable Li-Po 3060 mAh                    |
| Dimensions   | 149.7 x 71.2 x 8 mm (5.89 x 2.80 x 0.31 in)     |
| Display      | 1080 x 2280 pixels, 19:9 ratio (~432ppi density)|

## Build instructions

```
# Compiling
$ . build/envsetup.sh
$ lunch omni_CTL-eng
$ make -j$(nproc --all) recoveryimage
```
