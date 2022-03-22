# icarus

* https://stackoverflow.com/questions/43595585/systemverilog-support-of-icarus-iverilog-compiler

From man iverilog:

```
-g1995|-g2001|-g2001-noconfig|-g2005|-g2005-sv|-g2009|-g2012
```

Select the Verilog language generation to support in the compiler. This selects between IEEE1364-1995, IEEE1364-2001, IEEE1364-2005, IEEE1800-2005, IEEE1800-2009, or IEEE1800-2012. Icarus Verilog currently defaults to the IEEE1364-2005 generation of the language. This flag is used to restrict the language to a set of keywords/features, this allows simulation of older Verilog code that may use newer keywords and for compatibility with other tools. Much of the IEEE1800 generations functionality is not currently supported. The IEEE1800 generations do parse all the keywords, so they can be used to verify that IEEE1364 compliant Verilog code does not use any of the new IEEE1800 keywords.

Indeed, it tells you so when trying to use unpacked arrays in ports:

error: Ports cannot be unpacked arrays. Try enabling SystemVerilog support.