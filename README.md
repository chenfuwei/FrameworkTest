# FrameworkTest
动态库静态库测试 

StaticLibA:静态.a库，定义了全局变量globalValue
DynamicA：动态库A
DynamicB：动态库B

DynamicA与DynamicB都依赖于StaticLibA。

工程test依赖于StaticLibA， DynamicA， DynamicB。

DynamicA与DynamicB都去修改全局变量globalValue的值。


测试结果：
globalValue在DynamicA与DynamicB及StaticLibA都是独立的，互不影响。



DynamicC: 动态库C
DynamicA与DynamicB都依赖于DynamicC。DynamicC中定义了全局变量globalValueC。
测试结果：
各动态库共享全局变量globalValueC的值，互相影响。
