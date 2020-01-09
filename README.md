Learn VHDL
===
使用Altera Cyclone V SoC Kit和Altera Cyclone III DE0學習使用FPGA與VHDL的過程檔案。

板子與晶片:
- Altera Cyclone V SoC Kit:5CSXFC6D6F31C8NES
- Altera Cyclone III DE0:EP3C16F484C6N

軟體:
- Quartus II 64-bit 15.0 Web Edition
- Quartus II 32-bit 13.1 Web Edition

作業系統:
- Windows
- Ubuntu 16.04 LTS

# Altera Cyclone V SoC Kit
SW 預設以高電位

Quartus II 32-bit 13.1 Web Edition
===
## 常見問題
1. Quartus II 13版本前Altera官方都沒有出64Bit的IDE工具，而Ubuntu 16後所有的系統都不會內建32bit的C語言相關的函式庫，所以Ubuntu 16.04 LTS的使用者在第一次安裝Quartus II 32-bit 13.1 Web Edition會需要去安裝一些函式庫，下載連結:
- 套件名稱與連結，不過因為上次安裝後沒有紀錄，只能等下次重新佈署系統再紀錄了。

1. Quartus II 13版本前Altera官方都沒有出64Bit的IDE工具，而Ubuntu 16後所有的系統都不會內建32bit的C語言相關的函式庫，所以Ubuntu 16.04 LTS的使用者在使用ModelSim-Altera函式庫會需要去安裝`libxft2`的函式庫，下載連結:
- [libxft2](https://packages.ubuntu.com/xenial/libxft2)

通常在使用Simulation Waveform Editor的Run Functional Simulation時調用ModelSim-Altera運行時會先出現以下錯誤:
```
error while loading shared libraries: libXft.so.2: cannot open shared object file: No such file or directory
```

Quartus II 64-bit 15.0 Web Edition
===
