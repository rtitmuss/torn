# Torn Keyboard Build

Welcome to the Torn keyboard build instructions.

## You Need

You need the following components (not included in the Torn Keyboard kit).

Cherry MX compatible build:

*   USB C cable
*   TRRS cable
*   42-44 x MX Cherry MX compatible switches \
42-44 x Kailh PCB Socket CPG151101S11 **(optional)**
*   Keycaps for MX switches
*   2 x EC11 Encoders and knobs **(optional)**

Kailh low profile (choc) build:

*   USB C cable
*   TRRS cable
*   42-44 x Kailh low profile switch PG1350
*   Keycaps for Kailh low profile switches
*   2 x EC11 Encoders and knobs **(optional)**

Note: the cable must be a **TRRS cable** with 4 contacts and NOT a TRS cable with 3 contacts.

## Torn PCB Assembly

Follow the [PCB assembly instructions](pcb.md) to solder the components on the left and right sides 
of the keyboard. Test the keyboard is working before installing it in a case.

![alt_text](build/image46.jpg)

![alt_text](build/image39.jpg)


## Torn Keyboard Cases

The completed PCBs can be installed in a keyboard case. There are several options available, or you could
design your own!

### Torn Wedge Case

The Wedge Case has been designed for the Torn keyboard. It has been designed as a premium case option,
for MX Switches, weighing approx 500g with an angled 3D printed case and a steel plate. Follow the
[Wedge Case instructions](../case/wedge/wedge.md) for more information or to assemble the wedge case.

![alt_text](../case/wedge/img/PXL_20210508_125158827.PORTRAIT.jpg)

### Weighted HiPro Case

This [3d printed Weighted HiPro Case](../case/HiPro%20Case/readme.md) is designed for MX or Kailh Choc switches. This case is designed
with a snap fit assembly, and to include 200g weight in each half.

![torn](../case/HiPro%20Case/img/PXL_20210716_130633293.PORTRAIT.jpg)

### Travel Case

You can 3d print a folding [travel case](../case/Travel%20Case/readme.md) designed for Kailh Choc
switches and a 15 inch Macbook Pro.

![torn](../case/Travel%20Case/img/PXL_20210807_121445468.jpg)

### PCB Plate with MX Switches

You can use a PCB Plate case with MX Swtiches, see the [PCB Plate instructions](./build_mx.md)
for more information.

![torn](./img/img2.jpg)

### PCB case with Kailh Choc Switches

If you prefer a low profile keyboard you can use Kailh Choc Switches, see the [ Choc Switches instructions](build_choc.md)
for more information.

![alt_text](build/image26.jpg)

### 3d printed case

You can [3d print](../case/3D%20Printed%20Case/readme.md) a case that can be used with either MX Switches or Kailh Choc Switches.

![torn](../case/3D%20Printed%20Case/torn%20-%201.jpeg)

## Configuring Torn Keyboard

If you bought the Torn Keyboard kit the ATmega328P has already been programmed, and you can use VIA or flash QMK as decribed below. Otherwise if you purchased your own components you will need to first [flash the bootloader](bootloader.md).

### VIA

You can use VIA to configure the Torn Keyboard. Download and install Via from [https://caniusevia.com/](https://caniusevia.com/). VIA will allow you to dynamically remap the keys when you plug the keyboard in.

To erase the configuration and return to the default settings, press the top left button on the keyboard when plugging in the USB C connector.

If you want to change the rotary encoder settings, or customize the OLED display you must download the QMK firmware and follow the instructions for Programming QMK.


### QMK

You can fully customize your Torn Keyboard by updating QMK.

Download the QMK source code from [https://github.com/qmk/qmk_firmware](https://github.com/qmk/qmk_firmware). You can then edit the source code, for example [creating our own keymap](https://docs.qmk.fm/#/custom_quantum_functions).

Enter bootloader mode by:

1. Plug in the TRRS cable to connect the left and right sides for the keyboard
2. Plug in USB C cable between the keyboard and your PC
3. Push and hold RESET SW
4. Push and hold BOOT SW
5. Release RESET SW
6. Release BOOT SW

You can then program QMK using:

```
make torn:via:flash
```

For additional help flashing QMK please see [https://docs.qmk.fm/#/newbs_flashing](https://docs.qmk.fm/#/newbs_flashing).

## Enjoy!

Congratulations on completing your Torn keyboard! It was fun designing and sharing this keyboard and
I enjoy seeing pictures of the finished build. So take a photo (tips for your
[phone](https://switchandclick.com/how-to-take-better-photos-of-your-keyboard-among-other-things/)
or [dslr](https://golem.hu/article/keyboard-photography/)) and share in
[Discord](https://discord.gg/mamAqNccju) or on [Reddit](https://www.reddit.com/r/ErgoMechKeyboards/).