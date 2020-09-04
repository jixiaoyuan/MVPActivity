package ${packageName};

import com.lushang.core.base.BaseModel;
import com.lushang.core.base.BasePresenter;
import com.lushang.core.base.BaseView;
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
         *
         *
         * @return
         */
        Observable<Object> update();

    }

    interface View extends BaseView {

    }

    interface Presenter extends BasePresenter<Model, View> {

        /**
         *
         */
        void update();
    }
	
}