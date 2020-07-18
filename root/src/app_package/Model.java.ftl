package ${packageName};

import com.xx.bean.base.BaseResult;
import com.xx.http.rx.TransformUtils;
import com.xx.mvp.base.BaseModelImpl;
import retrofit2.http.POST;
import rx.Observable;
<#assign aDateTime = .now>
/**
 * Present: {@link ${presenterName}}
 * @Author: ${author}
 * @Description: 
 * @Date: Create in  ${aDateTime}
 * @Modified By:
 */
public class ${modelName} extends BaseModelImpl<${modelName}.Service> implements ${contractName}.Model {
	public ${modelName}() {super(${modelName}.Service.class);}

    @Override
    public Observable<Object> update() {
        return getRequestService()
                .update()
                .compose(TransformUtils.defaultSchedulers());
    }

    public interface Service {
        /**
         * 更新数据
         *
         * @return
         */
        @POST("pos-web/updateAllData")
        Observable<BaseResult<Object>> update();
    }
}