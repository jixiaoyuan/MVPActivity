package ${packageName};

import android.os.Bundle;
import rx.Subscription;
import com.lushang.http.rx.NewExceptionObserver;
import com.lushang.mvp.base.BasePresenterImpl;

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
     *
     */
    @Override
    public void update() {
        Subscription subscribe = getModel().update()
                .subscribe(new NewExceptionObserver<Object>(this) {
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