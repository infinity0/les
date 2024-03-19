==========================
Linux Entertainment System
==========================

Make Shit Just Work on a GNU/Linux computer running as a media box for a TV.

Tested on Linux Mint (based on Ubuntu, based on Debian). Should work elsewhere,
send me patches if not.

Details
=======

- Disable computer auto-suspend and TV auto-off, when audio (incl. video) is playing.
- Switch on TV and make it source the computer, when the latter wakes from suspend.

Install/build hardware
======================

Due to limitations of both common computers and TVs, you will very likely need
the following:

- To enable your computer to speak HDMI-CEC:

  - Special DP-to-HDMI adapter, e.g. P/N 2JA63AA from HP.
  - See ``cec-autostart`` for details and alternatives.

- To enable your computer to switch your TV on via IR Remote Control, if/when
  its HDMI-CEC and Wake-on-LAN are both off:

  - USB-to-GPIO breakout board with bitbang mode, e.g. Adafruit FT232H.
  - IR transmitter and receiver GPIO modules, commonly available.
  - DuPont/jump wires and a USB-C cable to hook these up to the computer.
  - See ``config/vars.example`` for details and alternatives.

Configure hardware
==================

Make sure both HDMI-CEC and Wake-on-LAN are enabled on your TV, if possible.

Install dependencies
====================

::

  $ make dep # assumes Debian-based system

Install
=======

::

  $ sudo make install
  $ sudo make postinst
