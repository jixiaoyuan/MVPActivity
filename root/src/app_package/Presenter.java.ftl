package ${packageName};

import android.os.Bundle;
import com.xx.http.rx.BaseSubscribe;
import com.xx.mvp.base.BasePresenterImpl;
import rx.Subscription;

<#assign aDateTime = .now>
/**
 * Model: {@link ${modelName}} View:{@link ${activityClass}}
 * @Author: ${author}
 * @Description: 
 * @Date: Create in ${aDateTime}
 * @Modified By:
 */
class ${presenterName} extends BasePresenterImpl<${contractName}.Model, ${contractName}.View>
        implements ${contractName}.Presenter {

    @Override
    public void onCreate(Bundle savedInstanceState) {

    }
	
	/**
     * 更新数据
     */
    @Override
    public void update() {
        Subscription subscribe = getModel().update()
                .subscribe(new BaseSubscribe<Object>(this) {
                    @Override
                    protected void onSuccess(Object bean) {
                    }
                });
        addSubscribeRequest(subscribe);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
    }

}