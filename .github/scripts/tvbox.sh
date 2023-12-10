#!/bin/bash

find $GITHUB_WORKSPACE -maxdepth 1 -type f -name "*.json"

for file in $(find $GITHUB_WORKSPACE -maxdepth 1 -type f -name "*.json"); do
	sed -i '/^{"name":"磁力廣告"/ s/"regex":.*\]},/"regex":\["更多","最新","更新","直播","社區","社区","有趣","英皇体育","新片首发","xuu","UUE29"\]},/' $file
done
sed -szi 's|"ads":\[.*\]|"ads":\["raw.githubusercontent.com",\
"googlevideo.com",\
"cdn.v82u1l.com",\
"cdn.iz8qkg.com",\
"cdn.kin6c1.com",\
"c.biggggg.com",\
"c.olddddd.com",\
"haiwaikan.com",\
"www.histar.tv",\
"youtube.com",\
"uhibo.com",\
".*boku.*",\
".*nivod.*",\
".*ulivetv.*",\
"wan.51img1.com",\
"iqiyi.hbuioo.com",\
"vip.ffzyad.com",\
"mimg.0c1q0l.cn",\
"www.googletagmanager.com",\
"www.google-analytics.com",\
"mc.usihnbcq.cn",\
"mg.g1mm3d.cn",\
"mscs.svaeuzh.cn",\
"cnzz.hhttm.top",\
"tp.vinuxhome.com",\
"cnzz.mmstat.com",\
"www.baihuillq.com",\
"s23.cnzz.com",\
"z3.cnzz.com",\
"c.cnzz.com",\
"stj.v1vo.top",\
"z12.cnzz.com",\
"img.mosflower.cn",\
"tips.gamevvip.com",\
"ehwe.yhdtns.com",\
"xdn.cqqc3.com",\
"www.jixunkyy.cn",\
"sp.chemacid.cn",\
"hm.baidu.com",\
"s9.cnzz.com",\
"z6.cnzz.com",\
"um.cavuc.com",\
"mav.mavuz.com",\
"wofwk.aoidf3.com",\
"z5.cnzz.com",\
"xc.hubeijieshikj.cn",\
"tj.tianwenhu.com",\
"xg.gars57.cn",\
"k.jinxiuzhilv.com",\
"cdn.bootcss.com",\
"ppl.xunzhuo123.com",\
"xomk.jiangjunmh.top",\
"img.xunzhuo123.com",\
"z1.cnzz.com",\
"s13.cnzz.com",\
"xg.huataisangao.cn",\
"z7.cnzz.com",\
"xg.huataisangao.cn",\
"z2.cnzz.com",\
"s96.cnzz.com",\
"q11.cnzz.com",\
"thy.dacedsfa.cn",\
"xg.whsbpw.cn",\
"s19.cnzz.com",\
"z8.cnzz.com",\
"s4.cnzz.com",\
"f5w.as12df.top",\
"ae01.alicdn.com",\
"www.92424.cn",\
"k.wudejia.com",\
"vivovip.mmszxc.top",\
"qiu.xixiqiu.com",\
"cdnjs.hnfenxun.com",\
"cms.qdwght.com",\
"api.htpan.net"\]|' $GITHUB_WORKSPACE/js.json $GITHUB_WORKSPACE/jsm.json
rm -rf $GITHUB_WORKSPACE/9918.json