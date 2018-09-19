# 小米游戏本吃黑苹果

## 笔记本具体配置（主要关注的几个点）

- 小米游戏本初代（顶配版）
- CPU：i7-7700HQ
- 集显：HD630
- 独显：GTX1060移动版
- 16G内存
- 分辨率：1920*1080
- 无线网卡：Intel Dual Band Wireless-AC 8265

## 介绍链接和帖子

- Github: https://github.com/sandy1108/Clover-XiaoMi-GameLaptop
- QQ讨论群：756750452（是小米游戏本吃黑苹果的兴趣群，不是纯伸手党群哈，不喜勿加）
- 简书文章：https://www.jianshu.com/p/005712b26a35
- 远景帖子：http://bbs.pcbeta.com/viewthread-1785928-1-1.html

## 安装注意事项

1. 目前master分支的最新配置文件，是不可以用于安装的，原因是里面增加了许多驱动，最重要的一点是，驱动了独立显卡。而安装黑苹果过程中是必须禁用独显的。
2. 安装时可以使用未驱动独立显卡的历史版本，或者不太明白的小白可以考虑使用我拉出来的install分支，或者也可以直接用正常的CLOVER配置，但是进入安装系统时切换config.plist文件为config-when-install.plist
3. 有群里的朋友反馈说，使用了我的Clover配置，连Clover界面都进不去。后来排查后发现，如果开机F12进入Clover，就会导致黑屏。但是调整了启动顺序，把Clover调为第一位，自动进入就没有问题了。如果有朋友是F12进入的，请自行检查Clover/drivers64UEFI中有没有CsmVideoDxe-64.efi文件，有的话，删掉，应该可以正常进入了。未来我会再确认一下它的作用，也可能会直接在仓库中删除。
4. 最新状态：已经删除CsmVideoDxe-64.efi，并且在config.plist里面把这个efi拉入“黑名单”了，这样就不会出现3中的问题了。

## Mojave支持情况

1. 触摸板不可用，强行使用就会无法进入10.14系统导致内核崩溃，只能坐等歪果仁大佬亚历山大更新I2C驱动来适配Mojave；
2. 独显无法驱动，因为官方暂未发布驱动。而且禁用独显配置不可用。虽然不影响进入系统使用，但是睡眠是有问题的，睡眠只关闭了屏幕，风扇还在转，不完美。睡眠唤醒也可用；
3. 其他还有可能有未知问题，慢慢来吧，怕有问题的，就别升10.14，或者自己会研究的自己鼓捣鼓捣。本人近期比较忙，更新可能放缓~
4. **食用10.14的特殊注意事项：删除kexts中的I2C相关的两个kext包（VoodooI2C.kext和VoodooI2CHID.kext）。**

## 现状（实时更新）

### Clover版本

4644

### 好的方面

1. 集成显卡基本驱动成功，显存显示2048MB
2. 屏幕显示效果很棒，色彩很舒服
3. 电量正常显示，充电状态正常显示
4. 外置USB鼠标、内置键盘可用
5. 集显独显双驱动，但是正常情况下，内置显示器无法真正使用独显
6. HDMI画面外接显示器可用，声音可能不可用，忘记测试；
7. CPU调频8个档，基本算是正常；
8. Airplay可用；
9. 系统设置中亮度调节正常；
10. USB3.0的U盘使用基本正常；
11. 有线网卡正常使用；
12. 声卡使用AppleALC驱动基本正常；（感谢群内的热心小伙伴 @頭糖吥給阣 ）
13. 关上盖子可以睡眠（不修改USB问题也可以）
14. 睡眠后立即唤醒的问题已经解决（USB使用自定义的SSDT修复，屏蔽无用端口）
15. 摄像头正常
16. 触摸板可用：除了双指缩放无法使用，其他Mac系统原生手势均可用
17. 内置蓝牙不可用，已经禁用内置蓝牙，以便可以使用USB外接蓝牙
18. Clover引导时，可以记忆上一次选择的系统并倒计时进入了
19. Fn快捷键组合功能，已经可以调节：声音、亮度、触摸板开关、键盘背光

### 坏的方面（后期慢慢优化）

- 内置无线网卡不工作（Intel板载网卡，无解。目前使用USB无线网卡）
- 偶现一次-v启动系统时卡在waiting for DSMOS无法进入系统，重启就好了，再也没有复现过，是一个隐患，而且仅在机械硬盘安装出现过，暂未解决
- 内置蓝牙可以显示，但是搜不到设备，Airdrop不可用，故暂时禁用（禁用后就可以插入USB免驱的蓝牙来用了）
- 开机最后阶段的花屏，仅偶尔会出现（还有可能有红背景的苹果闪过，待解决）

## 更新历史

### 20180920：

1. 更新USB驱动配置，支持后置的Type-C口转接出来的USB-hub上连接USB设备。
2. 增加-alcbeta参数，防止旧版的AppleALC无法在10.14上使用。故10.14中声卡可以用了。
3. 增加10.14系统中去除Lilu多余日志的补丁，一旦内核崩溃，查看日志较为直观。
4. 增加10.13.6的USB解除端口数限制的补丁，仅用于调试USB端口使用。目前状态是Disable，因为USB已经正常驱动，无需解除全部限制。
5. 更新FakeSMC系列驱动为20180915版本
6. 更新Lilu为1.2.7；更新WhateverGreen为1.2.2；尝试解决10.14beta版中无法禁用独立显卡的问题，但未成功。
7. 更新VoodooI2C驱动为2.1版本，触摸板手势更加完美，双指捏合放大缩小基本可用。其他的各种指头的操作也均可用。但是在10.14系统中依然会导致系统启动过程中内核崩溃重启，无法进入系统。
8. 加入了基于Lilu的HibernationFixup.kext插件，版本为1.2.3。并且启动参数增加了对应的-hbfxbeta，使其对10.14生效。 对于10.13.x，可能会更完美一点，能够解决一些非常偶现的睡眠唤醒黑屏死机的问题（待长期验证）。 对于10.14，在目前没有独显而且无法屏蔽独显的情况下，初步验证后发现，已经能够做到睡眠唤醒不死机不黑屏了，但是貌似无法真正的睡眠了（就是目前在10.14中，睡眠只黑屏，但是风扇还在转），还有待继续观望。

### 20180910：

1. 移除无用的旧的USB驱动；
2. 移除IntelGraphicsDVMTFixup驱动，改用WhateverGreen驱动集显修复FB问题。
3. 更新USBInjectAll驱动
4. 替换SATA-RAID为SATA-100驱动，如有傲腾加速的兼容需要，可以自行去OtherBackup中寻找RAID驱动，替换之。
5. 支持10.14。Mojave beta10测试可用。同样的配置，也可以用于安装，不需要切换到禁用独显的配置文件；USB3.0也可以安装；另外，10.14中，只能用默认config.plist配置，禁用独显等配置暂时没有适配好。仅供尝鲜使用。触摸板不可用。使用10.14方法：删除kexts中的I2C相关的两个kext包。

### 20180823：

1. 确认了键盘设备为PS2L，引入VoodooPS2Controller驱动键盘，在此基础上使用hotpatch修复Fn调节亮度，Fn调节声音也不会导致键盘失灵了
2. 新增一个config-when-install.plist，禁用独显，不支持触摸板，临时解除USB端口数限制，这个配置文件应该可以用于安装
3. 相关改动以及一些配置和代码的整理等

### 20180822：

1. 更新Lilu.kext到1.2.6版本。
2. 引入WhateverGreen.kext，版本为1.2.1。
3. 由于与WhateverGreen.kext功能重复，故移除IntelGraphicsFixup.kext, NvdiaGraphicsFixup.kext, Shiki.kext
4. 更新config.plist适配WhateverGreen
5. 根据AppleIntelKBLGraphicsFramebuffer驱动的内容，修正了config.plist中的补丁，虚拟显存调整为2048MB。但仍未解决花屏问题。
6. 更改SATA驱动为支持RAID的版本，会把RAID当做AHCI来操作。

### 20180821：

- 更新clover版本到4644。
- 可以记忆上回选择的系统，倒计时5秒自动进入。
- 更正了启用触摸板禁用独显的配置文件的bug。
- APFS.efi移除，直接使用新Clover中的APFSDriverLoader.efi

### 20180815：

- 添加NoTouchID驱动，10.13.6系统密码框不会出现卡顿

### 20180813：

- 触摸板已驱动, 正常可用。
- 键盘的部分fn已经可以使用, 亮度调节会导致键盘失灵
- 默认禁用内置蓝牙，是为了能够直接使用USB外置蓝牙，有蓝牙需求可以购买：黑苹果USB蓝牙适配器4.0免驱即插即用

### 20180619（稳定版）：

1. 触摸板：不能使用
2. 键盘：不可以使用fn功能键, 否则键盘会失灵
3. 内置WIFI：只有使用外接网卡解决
4. 内置蓝牙：mac中无法搜索, 可以尝试从Windows中连上后重启到mac, 关机会失效。
5. SD卡槽: 似乎无法驱动
6. 1050Ti独显似乎无法驱动
