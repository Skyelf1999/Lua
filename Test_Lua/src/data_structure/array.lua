�象列表fig，区域对象列表axes

##### 2. **绘制图像

- 单张图：`plt.plot(x, y, linewidth, linestyle, color, label)`

  > 针对2维
  >
  > x、y是存放坐标的列表，对应位置数据组合成一个点的坐标，相邻点进行连线
  >
  > 可以对一张图进行多次plot或一次plot传入多组参数，将多个线条绘制在同一张图上
  >
  > 具体参数与下文的grid相似
  - label：线的标签，用于图例显示

- 多张图：`axes[i].plot(参数与单张图类似)`

  > axes为创建多张图时返回的区域对象列表
  >
  > 但也可多次调用plot来在一张画布上画多个图

##### 3. 图像结构配置

> 具体内容见下文

##### 4. 保存图像：`plt.savefig("路径")`

> show()会释放figure资源，如果显示图像之后保存图片只能保存空图片

##### 5. 图像显示：`plt.show()`



### 图像结构

![img](https://img-blog.csdnimg.cn/20210630215440797.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzQ2MDkyMDYx,size_16,color_FFFFFF,t_70#pic_center)

##### 1. 标题设置

- 单张图：`plt.title("名称",fontsize)`
- 多张图：`axes[i].set_title("", fontsize)`

##### 2. 坐标轴标签

- 单张图：`plt.xlabel('x轴',fontsize)`
- 多张图：`axes[i].set_xlabel("",fontsize)`

##### 3. **坐标轴范围

- 统一设置：`