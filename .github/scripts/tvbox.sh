#!/bin/bash

find $GITHUB_WORKSPACE -maxdepth 1 -type f -name "*.json"

for file in $(find $GITHUB_WORKSPACE -maxdepth 1 -type f -name "*.json"); do
	sed -i '/^{"name":"磁力廣告"/ s/"regex":.*\]},/"regex":\["更多","最新","更新","直播","社區","社区","有趣","英皇体育","新片首发","xuu","UUE29"\]},/' $file
done
sed -szi 's|"ads":\[.*\]|"ads":\["raw.githubusercontent.com",\
".*boku.*",\
".*nivod.*",\
".*ulivetv.*",\
"ae01.alicdn.com",\
"api.htpan.net",\
"c.biggggg.com",\
"c.cnzz.com",\
"c.olddddd.com",\
"cdn.bootcss.com",\
"cdn.iz8qkg.com",\
"cdn.kin6c1.com",\
"cdn.v82u1l.com",\
"cdnjs.hnfenxun.com",\
"cms.qdwght.com",\
"cnzz.hhttm.top",\
"cnzz.mmstat.com",\
"ehwe.yhdtns.com",\
"f5w.as12df.top",\
"googlevideo.com",\
"haiwaikan.com",\
"hm.baidu.com",\
"img.mosflower.cn",\
"img.xunzhuo123.com",\
"iqiyi.hbuioo.com",\
"k.jinxiuzhilv.com",\
"k.wudejia.com",\
"mav.mavuz.com",\
"mc.usihnbcq.cn",\
"mg.g1mm3d.cn",\
"mimg.0c1q0l.cn",\
"mscs.svaeuzh.cn",\
"ppl.xunzhuo123.com",\
"q11.cnzz.com",\
"qiu.xixiqiu.com",\
"s13.cnzz.com",\
"s19.cnzz.com",\
"s23.cnzz.com",\
"s4.cnzz.com",\
"s9.cnzz.com",\
"s96.cnzz.com",\
"sp.chemacid.cn",\
"stj.v1vo.top",\
"thy.dacedsfa.cn",\
"tips.gamevvip.com",\
"tj.tianwenhu.com",\
"tp.vinuxhome.com",\
"uhibo.com",\
"um.cavuc.com",\
"vip.ffzyad.com",\
"vivovip.mmszxc.top",\
"wan.51img1.com",\
"wofwk.aoidf3.com",\
"www.92424.cn",\
"www.baihuillq.com",\
"www.google-analytics.com",\
"www.googletagmanager.com",\
"www.histar.tv",\
"www.jixunkyy.cn",\
"xc.hubeijieshikj.cn",\
"xdn.cqqc3.com",\
"xg.gars57.cn",\
"xg.huataisangao.cn",\
"xg.whsbpw.cn",\
"xomk.jiangjunmh.top",\
"youtube.com",\
"z1.cnzz.com",\
"z12.cnzz.com",\
"z2.cnzz.com",\
"z3.cnzz.com",\
"z5.cnzz.com",\
"z6.cnzz.com",\
"z7.cnzz.com",\
"z8.cnzz.com"\]|' $GITHUB_WORKSPACE/js.json $GITHUB_WORKSPACE/jsm.json
rm -rf $GITHUB_WORKSPACE/9918.json