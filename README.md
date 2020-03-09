# Learn VHDL
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

# Quartus II 32-bit 13.1 Web Edition
## 常見問題
1. Quartus II 13版本前Altera官方都沒有出64Bit的IDE工具，而Ubuntu 16後所有的系統都不會內建32bit的C語言相關的函式庫，所以Ubuntu 16.04 LTS的使用者在第一次安裝Quartus II 32-bit 13.1 Web Edition會需要去安裝一些函式庫，下載連結:
- 套件名稱與連結，不過因為上次安裝後沒有紀錄，只能等下次重新佈署系統再紀錄了。

1. Quartus II 13版本前Altera官方都沒有出64Bit的IDE工具，而Ubuntu 16後所有的系統都不會內建32bit的C語言相關的函式庫，所以Ubuntu 16.04 LTS的使用者在使用ModelSim-Altera函式庫會需要去安裝`libxft2`的函式庫，下載連結:
- [libxft2](https://packages.ubuntu.com/xenial/libxft2)

通常在使用Simulation Waveform Editor的Run Functional Simulation時調用ModelSim-Altera運行時會先出現以下錯誤:
```
**** Running the ModelSim simulation ****

altera/13.1/modelsim_ase/linuxaloem/vsim -c -do BCD_seven_seg_A.do

altera/13.1/modelsim_ase/linuxaloem/vish: error while loading shared libraries: libXft.so.2: cannot open shared object file: No such file or directory
```

## 授權問題
如果出現以下問題，代表他找不到授權的檔案，但Quartus II 32-bit 13.1 Web Edition在有限度的情況下是可以免費的使用，因此出現此錯誤是有問題的。

```
Unable to find the license file.  It appears that your license file environment variable (e.g., LM_LICENSE_FILE) is not set correctly.Unable to checkout a license.  Vsim is closing.** Fatal: Invalid license environment. Application closing.
Error.
```

修正方式是到軟體設定模擬運算的地方，將程式路徑指定到`/home/timmy/altera/15.0/modelsim_ase/linuxaloem`後重新模擬後即可運作。

# Quartus II 64-bit 15.0 Web Edition
## 晶片版本與軟體版本轉換錯誤
如果使用Altera Cyclone III晶片與Quartus II 32-bit 13.1 Web Edition所輸出的專案，在Quartus II 64-bit 15.0 Web Edition會因為此軟體版本不支援Altera Cyclone III，因此會出現以下錯:

```
Error (114006): Database file /home/timmy/Git/Learn-VHDL/CH6/CH6-2/db/BCD_seven_seg_A.sld_design_entry_dsc.sci, created by Quartus II Version 13.1.0 Build 162 10/23/2013 SJ Web Edition software, not compatible with current Quartus II Version 15.0.0 Build 145 04/22/2015 SJ Web Edition software
```

如果出現上述問題，請將專案使用Quartus II 32-bit 13.1 Web Edition開啟後接受轉成Altera Cyclone V的晶片後儲存專案，再使用Quartus II 64-bit 15.0 Web Edition即可開起來。
