package ${packageName};

import com.xx.mvp.base.BaseModel;
import com.xx.mvp.base.BasePresenter;
import com.xx.mvp.base.BaseView;
import rx.Observable;
<#assign aDateTime = .now>
/**
 * Model: {@link ${modelName}} View:{@link ${activityClass}} Presenter:{@link ${presenterName}}
 * @Author: ${author}
 * @Description: 
 * @Date: Create in ${aDateTime}
 * @Modified By:
 */
public interface ${contractName} {

   interface Model extends BaseModel {
        /**
         * 更新数据
         *
         * @return
         */
        Observable<Object> update();

    }

    interface View extends BaseView {

    }

    interface Presenter extends BasePresenter<Model, View> {

        /**
         * 更新数据
         */
        void update();
    }
	
}