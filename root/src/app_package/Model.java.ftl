package ${packageName};

import com.lushang.core.base.BaseModelImpl;
import com.lushang.core.bean.base.BaseResult;
import com.lushang.core.http.rx.TransformUtils;
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
         *
         *
         * @return
         */
        @POST("pos-web/updateAllData")
        Observable<BaseResult<Object>> update();
    }
}