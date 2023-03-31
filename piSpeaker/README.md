# Pi Speaker

Parts:

* Speaker - https://shop.pimoroni.com/products/5w-4-ohm-65mm-full-range-speaker?variant=1014454121
* Amp - https://shop.pimoroni.com/products/adafruit-mono-2-5w-class-d-audio-amplifier-pam8302
* 3.5mm jack like this - https://thepihut.com/products/3-5mm-1-8-stereo-diy-plug
* Raspberry pi, i'm using a 3b.


## pam8302a pins

* 4 - 5V
* 6 - ground
* 8 - mute (gpio 14)
 
A- => 3.5mm speaker ground
A+ => 3.5mm speaker L and R

## rotary encoder pins

* 37 - switch (gpio 26)
* 39 - ground

* 32 - out a (gpio 12)
* 34 - ground
* 36 - out b (gpio 16)

## Setup

### Install rust and cargo

`curl https://sh.rustup.rs -sSf | sh`

select option 1

Logout and in again.

### Install and configure librespot

Dependencies:

* `sudo apt install libasound2-dev`
* `sudo apt install python3-pip`
* `sudo pip3 install --upgrade setuptools`


Main Product:

`cargo install librespot`

copy spotify.py to /etc/librespot/spotify.py and make executable








