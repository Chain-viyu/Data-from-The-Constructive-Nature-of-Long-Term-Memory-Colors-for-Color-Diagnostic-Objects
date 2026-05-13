* Encoding: UTF-8.

DATASET ACTIVATE DataSet0.

MVA VARIABLES=青铜器_EXP5 青提_EXP5 黄瓜_EXP5 胡萝卜_EXP5 小黄鸭_EXP5 瓷器_EXP5 b站_EXP5 芬达_EXP5 可口可乐_EXP5 草莓_EXP5 
    茄子_EXP5 香蕉_EXP5 红玫瑰_EXP5 口罩_EXP5 蓝天_EXP5 草地_EXP5 美团_EXP5 微信_EXP5 小红书_EXP5 支付宝_EXP5 青铜器_EXP6 青提_EXP6 
    黄瓜_EXP6 胡萝卜_EXP6 小黄鸭_EXP6 瓷器_EXP6 b站_EXP6 芬达_EXP6 可口可乐_EXP6 草莓_EXP6 茄子_EXP6 香蕉_EXP6 红玫瑰_EXP6 
    口罩_EXP6 蓝天_EXP6 草地_EXP6 美团_EXP6 微信_EXP6 小红书_EXP6 支付宝_EXP6 
  /EM(TOLERANCE=0.001 CONVERGENCE=0.0001 ITERATIONS=25).

RMV /青铜器_EXP5_1=TREND(青铜器_EXP5) /青提_EXP5_1=TREND(青提_EXP5) /黄瓜_EXP5_1=TREND(黄瓜_EXP5) 
    /胡萝卜_EXP5_1=TREND(胡萝卜_EXP5) /小黄鸭_EXP5_1=TREND(小黄鸭_EXP5) /瓷器_EXP5_1=TREND(瓷器_EXP5) 
    /b站_EXP5_1=TREND(b站_EXP5) /芬达_EXP5_1=TREND(芬达_EXP5) /可口可乐_EXP5_1=TREND(可口可乐_EXP5) 
    /草莓_EXP5_1=TREND(草莓_EXP5) /茄子_EXP5_1=TREND(茄子_EXP5) /香蕉_EXP5_1=TREND(香蕉_EXP5) 
    /红玫瑰_EXP5_1=TREND(红玫瑰_EXP5) /口罩_EXP5_1=TREND(口罩_EXP5) /蓝天_EXP5_1=TREND(蓝天_EXP5) 
    /草地_EXP5_1=TREND(草地_EXP5) /美团_EXP5_1=TREND(美团_EXP5) /微信_EXP5_1=TREND(微信_EXP5) 
    /小红书_EXP5_1=TREND(小红书_EXP5) /支付宝_EXP5_1=TREND(支付宝_EXP5) /青铜器_EXP6_1=TREND(青铜器_EXP6) 
    /青提_EXP6_1=TREND(青提_EXP6) /黄瓜_EXP6_1=TREND(黄瓜_EXP6) /胡萝卜_EXP6_1=TREND(胡萝卜_EXP6) 
    /小黄鸭_EXP6_1=TREND(小黄鸭_EXP6) /瓷器_EXP6_1=TREND(瓷器_EXP6) /b站_EXP6_1=TREND(b站_EXP6) 
    /芬达_EXP6_1=TREND(芬达_EXP6) /可口可乐_EXP6_1=TREND(可口可乐_EXP6) /草莓_EXP6_1=TREND(草莓_EXP6) 
    /茄子_EXP6_1=TREND(茄子_EXP6) /香蕉_EXP6_1=TREND(香蕉_EXP6) /红玫瑰_EXP6_1=TREND(红玫瑰_EXP6) 
    /口罩_EXP6_1=TREND(口罩_EXP6) /蓝天_EXP6_1=TREND(蓝天_EXP6) /草地_EXP6_1=TREND(草地_EXP6) 
    /美团_EXP6_1=TREND(美团_EXP6) /微信_EXP6_1=TREND(微信_EXP6) /小红书_EXP6_1=TREND(小红书_EXP6) 
    /支付宝_EXP6_1=TREND(支付宝_EXP6).



GLM 青铜器_EXP5_1 青提_EXP5_1 黄瓜_EXP5_1 胡萝卜_EXP5_1 小黄鸭_EXP5_1 瓷器_EXP5_1 b站_EXP5_1 芬达_EXP5_1 可口可乐_EXP5_1 
    草莓_EXP5_1 茄子_EXP5_1 香蕉_EXP5_1 红玫瑰_EXP5_1 口罩_EXP5_1 蓝天_EXP5_1 草地_EXP5_1 美团_EXP5_1 微信_EXP5_1 
    小红书_EXP5_1 支付宝_EXP5_1 青铜器_EXP6_1 青提_EXP6_1 黄瓜_EXP6_1 胡萝卜_EXP6_1 小黄鸭_EXP6_1 瓷器_EXP6_1 b站_EXP6_1 
    芬达_EXP6_1 可口可乐_EXP6_1 草莓_EXP6_1 茄子_EXP6_1 香蕉_EXP6_1 红玫瑰_EXP6_1 口罩_EXP6_1 蓝天_EXP6_1 草地_EXP6_1 
    美团_EXP6_1 微信_EXP6_1 小红书_EXP6_1 支付宝_EXP6_1
  /WSFACTOR=Exp 2 Polynomial Object 20 Polynomial 
  /METHOD=SSTYPE(3)
  /PLOT=PROFILE(Object*Exp) TYPE=LINE ERRORBAR=CI MEANREFERENCE=NO YAXIS=AUTO
  /EMMEANS=TABLES(Exp) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Object) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Exp*Object) COMPARE (Exp) ADJ(BONFERRONI)
    /EMMEANS=TABLES(Exp*Object) COMPARE (Object) ADJ(BONFERRONI)
  /PRINT=DESCRIPTIVE ETASQ 
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=Exp Object Exp*Object.


DATASET ACTIVATE DataSet4.
GLM 青铜器_EXP5_1 青提_EXP5_1 黄瓜_EXP5_1 胡萝卜_EXP5_1 小黄鸭_EXP5_1 瓷器_EXP5_1 b站_EXP5_1 芬达_EXP5_1 可口可乐_EXP5_1 
    草莓_EXP5_1 茄子_EXP5_1 香蕉_EXP5_1 红玫瑰_EXP5_1 口罩_EXP5_1 蓝天_EXP5_1 草地_EXP5_1 美团_EXP5_1 微信_EXP5_1 
    小红书_EXP5_1 支付宝_EXP5_1 青铜器_EXP6_1 青提_EXP6_1 黄瓜_EXP6_1 胡萝卜_EXP6_1 小黄鸭_EXP6_1 瓷器_EXP6_1 b站_EXP6_1 
    芬达_EXP6_1 可口可乐_EXP6_1 草莓_EXP6_1 茄子_EXP6_1 香蕉_EXP6_1 红玫瑰_EXP6_1 口罩_EXP6_1 蓝天_EXP6_1 草地_EXP6_1 
    美团_EXP6_1 微信_EXP6_1 小红书_EXP6_1 支付宝_EXP6_1 BY WorkingMemory
  /WSFACTOR=Methods 2 Polynomial objects 20 Polynomial 
  /MEASURE=WM 
  /METHOD=SSTYPE(3)
  /PLOT=PROFILE(objects*WorkingMemory*Methods objects*Methods*WorkingMemory Methods*WorkingMemory WorkingMemory*Methods) 
    TYPE=LINE ERRORBAR=CI MEANREFERENCE=NO YAXIS=AUTO
  /EMMEANS=TABLES(WorkingMemory) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Methods) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(objects) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(WorkingMemory*Methods)  COMPARE (WorkingMemory) ADJ(BONFERRONI)
   /EMMEANS=TABLES(WorkingMemory*Methods)  COMPARE (Methods) ADJ(BONFERRONI)
  /EMMEANS=TABLES(WorkingMemory*objects) COMPARE (WorkingMemory) ADJ(BONFERRONI)
    /EMMEANS=TABLES(WorkingMemory*objects) COMPARE (objects) ADJ(BONFERRONI)
  /EMMEANS=TABLES(Methods*objects) COMPARE (Methods) ADJ(BONFERRONI)
    /EMMEANS=TABLES(Methods*objects) COMPARE (objects) ADJ(BONFERRONI)
  /EMMEANS=TABLES(WorkingMemory*Methods*objects) COMPARE (WorkingMemory) ADJ(BONFERRONI)
   /EMMEANS=TABLES(WorkingMemory*Methods*objects) COMPARE (Methods) ADJ(BONFERRONI)
    /EMMEANS=TABLES(WorkingMemory*Methods*objects) COMPARE (objects) ADJ(BONFERRONI)
  /PRINT=DESCRIPTIVE ETASQ HOMOGENEITY 
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=Methods objects Methods*objects
  /DESIGN=WorkingMemory.

DATASET ACTIVATE DataSet4.
GLM 青铜器_EXP5_1 青提_EXP5_1  小黄鸭_EXP5_1 瓷器_EXP5_1 b站_EXP5_1 芬达_EXP5_1 
    草莓_EXP5_1 茄子_EXP5_1 香蕉_EXP5_1 红玫瑰_EXP5_1  蓝天_EXP5_1 草地_EXP5_1 美团_EXP5_1 微信_EXP5_1 
    小红书_EXP5_1 支付宝_EXP5_1 青铜器_EXP6_1 青提_EXP6_1 小黄鸭_EXP6_1 瓷器_EXP6_1 b站_EXP6_1 
    芬达_EXP6_1  草莓_EXP6_1 茄子_EXP6_1 香蕉_EXP6_1 红玫瑰_EXP6_1  蓝天_EXP6_1 草地_EXP6_1 
    美团_EXP6_1 微信_EXP6_1 小红书_EXP6_1 支付宝_EXP6_1 BY WorkingMemory
  /WSFACTOR=Methods 2 Polynomial objects 16 Polynomial 
  /MEASURE=WM 
  /METHOD=SSTYPE(3)
  /PLOT=PROFILE(objects*WorkingMemory*Methods objects*Methods*WorkingMemory Methods*WorkingMemory WorkingMemory*Methods) 
    TYPE=LINE ERRORBAR=CI MEANREFERENCE=NO YAXIS=AUTO
  /EMMEANS=TABLES(WorkingMemory) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Methods) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(objects) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(WorkingMemory*Methods)  COMPARE (WorkingMemory) ADJ(BONFERRONI)
   /EMMEANS=TABLES(WorkingMemory*Methods)  COMPARE (Methods) ADJ(BONFERRONI)
  /EMMEANS=TABLES(WorkingMemory*objects) COMPARE (WorkingMemory) ADJ(BONFERRONI)
    /EMMEANS=TABLES(WorkingMemory*objects) COMPARE (objects) ADJ(BONFERRONI)
  /EMMEANS=TABLES(Methods*objects) COMPARE (Methods) ADJ(BONFERRONI)
    /EMMEANS=TABLES(Methods*objects) COMPARE (objects) ADJ(BONFERRONI)
  /EMMEANS=TABLES(WorkingMemory*Methods*objects) COMPARE (WorkingMemory) ADJ(BONFERRONI)
   /EMMEANS=TABLES(WorkingMemory*Methods*objects) COMPARE (Methods) ADJ(BONFERRONI)
    /EMMEANS=TABLES(WorkingMemory*Methods*objects) COMPARE (objects) ADJ(BONFERRONI)
  /PRINT=DESCRIPTIVE ETASQ HOMOGENEITY 
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=Methods objects Methods*objects
  /DESIGN=WorkingMemory.

DATASET ACTIVATE DataSet2.
GLM 青铜器_EXP5_1 青提_EXP5_1 黄瓜_EXP5_1 胡萝卜_EXP5_1 小黄鸭_EXP5_1 瓷器_EXP5_1 b站_EXP5_1 芬达_EXP5_1 可口可乐_EXP5_1 
    草莓_EXP5_1 茄子_EXP5_1 香蕉_EXP5_1 红玫瑰_EXP5_1 口罩_EXP5_1 蓝天_EXP5_1 草地_EXP5_1 美团_EXP5_1 微信_EXP5_1 
    小红书_EXP5_1 支付宝_EXP5_1 BY Methods
  /WSFACTOR=objects 20 Polynomial 
  /MEASURE=Exps 
  /METHOD=SSTYPE(3)
  /PLOT=PROFILE(objects*Methods) TYPE=LINE ERRORBAR=CI MEANREFERENCE=NO YAXIS=AUTO
  /EMMEANS=TABLES(Methods) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(objects) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Methods*objects) COMPARE (Methods) ADJ(BONFERRONI)
    /EMMEANS=TABLES(Methods*objects) COMPARE (objects) ADJ(BONFERRONI)
  /PRINT=DESCRIPTIVE ETASQ HOMOGENEITY 
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=objects 
  /DESIGN=Methods.

GLM 青铜器_ImageCues 青提_EXP5_1 小黄鸭_EXP5_1 瓷器_EXP5_1 b站_EXP5_1 芬达_EXP5_1 草莓_EXP5_1 茄子_EXP5_1 香蕉_EXP5_1 
    红玫瑰_EXP5_1 蓝天_EXP5_1 草地_EXP5_1 美团_EXP5_1 微信_EXP5_1 小红书_EXP5_1 支付宝_EXP5_1 BY WorkingMemory Methods
  /WSFACTOR=objects 16 Polynomial 
  /METHOD=SSTYPE(3)
  /POSTHOC=WorkingMemory Methods(BONFERRONI) 
  /PLOT=PROFILE(objects*WorkingMemory*Methods objects*Methods*WorkingMemory Methods*WorkingMemory 
    WorkingMemory*Methods) TYPE=LINE ERRORBAR=CI MEANREFERENCE=NO YAXIS=AUTO
  /EMMEANS=TABLES(WorkingMemory) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(objects) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Methods) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(WorkingMemory*Methods)  COMPARE (WorkingMemory) ADJ(BONFERRONI)
   /EMMEANS=TABLES(WorkingMemory*Methods)  COMPARE (Methods) ADJ(BONFERRONI)
  /EMMEANS=TABLES(WorkingMemory*objects) COMPARE (WorkingMemory) ADJ(BONFERRONI)
    /EMMEANS=TABLES(WorkingMemory*objects) COMPARE (objects) ADJ(BONFERRONI)
  /EMMEANS=TABLES(Methods*objects) COMPARE (Methods) ADJ(BONFERRONI)
    /EMMEANS=TABLES(Methods*objects) COMPARE (objects) ADJ(BONFERRONI)
  /EMMEANS=TABLES(WorkingMemory*Methods*objects) COMPARE (WorkingMemory) ADJ(BONFERRONI)
   /EMMEANS=TABLES(WorkingMemory*Methods*objects) COMPARE (Methods) ADJ(BONFERRONI)
    /EMMEANS=TABLES(WorkingMemory*Methods*objects) COMPARE (objects) ADJ(BONFERRONI)
  /PRINT=DESCRIPTIVE ETASQ HOMOGENEITY 
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=objects 
  /DESIGN=WorkingMemory Methods WorkingMemory*Methods.

DATASET ACTIVATE DataSet3.
GLM 青铜器_ImageCues 青提_EXP5_1 黄瓜_EXP5_1 胡萝卜_EXP5_1 小黄鸭_EXP5_1 瓷器_EXP5_1 草莓_EXP5_1 
    红玫瑰_EXP5_1 口罩_EXP5_1 蓝天_EXP5_1 草地_EXP5_1  BY WorkingMemory Methods
  /WSFACTOR=objects 11 Polynomial 
  /METHOD=SSTYPE(3)
  /POSTHOC=WorkingMemory Methods(BONFERRONI) 
  /PLOT=PROFILE(objects*WorkingMemory*Methods objects*Methods*WorkingMemory Methods*WorkingMemory 
    WorkingMemory*Methods) TYPE=LINE ERRORBAR=CI MEANREFERENCE=NO YAXIS=AUTO
  /EMMEANS=TABLES(WorkingMemory) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(objects) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(Methods) COMPARE ADJ(BONFERRONI)
  /EMMEANS=TABLES(WorkingMemory*Methods)  COMPARE (WorkingMemory) ADJ(BONFERRONI)
   /EMMEANS=TABLES(WorkingMemory*Methods)  COMPARE (Methods) ADJ(BONFERRONI)
  /EMMEANS=TABLES(WorkingMemory*objects) COMPARE (WorkingMemory) ADJ(BONFERRONI)
    /EMMEANS=TABLES(WorkingMemory*objects) COMPARE (objects) ADJ(BONFERRONI)
  /EMMEANS=TABLES(Methods*objects) COMPARE (Methods) ADJ(BONFERRONI)
    /EMMEANS=TABLES(Methods*objects) COMPARE (objects) ADJ(BONFERRONI)
  /EMMEANS=TABLES(WorkingMemory*Methods*objects) COMPARE (WorkingMemory) ADJ(BONFERRONI)
   /EMMEANS=TABLES(WorkingMemory*Methods*objects) COMPARE (Methods) ADJ(BONFERRONI)
    /EMMEANS=TABLES(WorkingMemory*Methods*objects) COMPARE (objects) ADJ(BONFERRONI)
  /PRINT=DESCRIPTIVE ETASQ HOMOGENEITY 
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=objects 
  /DESIGN=WorkingMemory Methods WorkingMemory*Methods.
