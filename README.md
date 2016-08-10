# NASDAQ-ITCH-5.0-Parser
Parses and prints the NASDAQ ITCH 5.0 data

Thanks to Quannabe. I just modified the YAML file for the nerw ITCH 5.0 format.


#How To

 The main function is location in ```src/parse.java```. Just enter the file name and path to the ITCH file that you wanna parse here [File Name](https://github.com/Amay22/NASDAQ-ITCH-5.0-Parser/blob/master/src/Parse.java#L56).

## Quickstart

Code can be built with GNU Make. Navigate to the repo's top-level directory call.

```
  make
```

This will compile Java bytecode in the src directory. To run program navigate to the src directory (or add it to your Java class path) and run the following command:

```
  java Parse [ITCH file path]
```

(Path can be left blank to read from stdin.)
 
## Install

To permanetely install. Naviage to the repo's top-level directory and call:

```
  make install
```

This installs the compiled java byte code to ```/usr/local/share/```. To run, add ```/usr/local/share/NASDAQ-ITCH-Parser``` to the Java classpath.

To install to a different directory call:

```
  make install target=[target directory]
```

## ITCH Format Variations

Support is included for custom ITCH formats. See ```itch5.yaml``` for an example of how to construct an	ITCH format configuration. To include a custom ITCH format configuration:

``` java Parse -y [YAML config] [ITCH file path] ```

### Genium

Genium is supported out of box. Use the ```genium2.yaml``` config included in the repo:

``` java Parse -y ../genium2.yaml [ITCH file path] ```

#Data

Download raw ITCH 5.0 data from the following link:

ftp://emi.nasdaq.com/ITCH/08022014.NASDAQ_ITCH50.gz

#DATA FORMAT

http://www.nasdaqtrader.com/content/technicalsupport/specifications/dataproducts/NQTVITCHspecification.pdf

(For Nasdaq Genium)

http://business.nasdaq.com/Docs/ITCHRefDataGuideNFXv2_00_tcm5044-18017.pdf
