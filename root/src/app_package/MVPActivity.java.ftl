package ${packageName};

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.lushang.R;
import com.lushang.core.base.BaseActivity;

<#if includeCppSupport!false>
import android.widget.TextView;
</#if>
<#assign aDateTime = .now>
/**
<#if generateMVP>
 * Model: {@link ${modelName}} Presenter:{@link ${presenterName}}
</#if>
 * @Author: ${author}
 * @Description:
 * @Date: Create in ${aDateTime}
 * @Modified By:
 */
<#if generateMVP>
public class ${activityClass} extends BaseActivity<${contractName}.Model, ${contractName}.View, ${contractName}.Presenter> implements ${contractName}.View {
<#else>
public class ${activityClass} extends BaseActivity{
</#if>

 	/*-----------------------静态Activity启动方法区-------------------*/

    public static void startActivity(Activity activity) {
        Intent intent = new Intent(activity, ${activityClass}.class);
        activity.startActivity(intent);
    }
	
    /*-----------------------常量声明区-------------------------------*/
    /*-----------------------UI控件成员变量声明区---------------------*/
    /*-----------------------普通成员变量声明区-----------------------*/
    /*-----------------------初始化相关方法区-------------------------*/

    @Override
    public int getContentView() {
        return R.layout.${layoutName};
    }
	
	@Override
    protected String getTitleName() {
        return null;
    }

    @Override
    public void initView(Bundle savedInstanceState, View titleLayout) {

    }

    @Override
    public void initData(Intent intent) {
        getPresenter().update();
    }
  

<#if generateMVP>
	@Override
    public ${contractName}.Model createModel() {
        return new ${modelName}();
    }

    @Override
    public ${contractName}.View createView() {
        return this;
    }

    @Override
    public ${contractName}.Presenter createPresenter() {
        return new ${presenterName}();
    }
<#else>
    @Override
    public BasePresenter createPresenter() {
        return null;
    }
</#if>

    /*-----------------------生命周期回调方法区（除onCreate()方法外）-*/
    /*-----------------------事件响应方法区---------------------------*/
    /*-----------------------重载的逻辑方法区-------------------------*/
    /*-----------------------普通逻辑方法区---------------------------*/
    /*-----------------------内部接口声明区---------------------------*/
    /*-----------------------内部类声明区-----------------------------*/
   
}
