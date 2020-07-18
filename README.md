# MVPActivity
Android Studio自定义模板之MVPActivity

### 修改globals.xml.ftl中id="author" value值为自己Header author信息
```xml
<?xml version="1.0"?>
<globals>
    <global id="author" value="sheaJi" />
    <global id="hasNoActionBar" type="boolean" value="false" />
    <global id="parentActivityClass" value="" />
    <global id="simpleLayoutName" value="${layoutName}" />
    <global id="excludeMenu" type="boolean" value="true" />
    <global id="generateActivityTitle" type="boolean" value="false" />
    <#include "../common/common_globals.xml.ftl" />
</globals>
```
### 替换 *.java.ftl 中 import 导包
替换`IContract.java.ftl`、`Model.java.ftl`、`MVPActivity.java.ftl`、`Presenter.java.ftl`文件顶部import com.xx.mvp.base.Basexxx 导包信息（BasePresent、BaseView、BaseModel）为相应项目的Base基类包名。
例如`IContract.java.ftl`
```java
package ${packageName};  
  
import com.xx.bean.base.BaseResult;  
import com.xx.http.rx.TransformUtils;  
import com.xx.mvp.base.BaseModelImpl;  
import retrofit2.http.POST;  
import rx.Observable;  
<#assign aDateTime = .now>
```
也可以去掉导包，让Android Studio自动导包，不过这样子有个弊端，自动创建后，需要主动触发自动导包
### 修改Activity、Present、Model中请求和初始化方法为项目实际
本源码里，网络请求使用的RxJava1+Retrofit2。BaseActivity 初始化、Present中网络请求、Model数据处理，多少会有些差异，需改写成项目实际操作
