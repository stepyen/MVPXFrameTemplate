package ${modelPackageName};

import android.app.Application;
import com.google.gson.Gson;
import com.stepyen.xframe.integration.IRepositoryManager;
import com.stepyen.xframe.mvp.BaseModel;

<#if needActivity && needFragment>
import com.stepyen.xframe.di.scope.ActivityScope;
<#elseif needActivity>
import com.stepyen.xframe.di.scope.ActivityScope;
<#elseif needFragment>
import com.stepyen.xframe.di.scope.FragmentScope;
</#if>
import javax.inject.Inject;

import ${contractPackageName}.${pageName}Contract;

<#import "root://activities/MVPXFrameTemplate/globals.xml.ftl" as gb>

<@gb.fileHeader />
<#if needActivity && needFragment>
@ActivityScope
<#elseif needActivity>
@ActivityScope
<#elseif needFragment>
@FragmentScope
</#if>
public class ${pageName}Model extends BaseModel implements ${pageName}Contract.Model{
    @Inject
    Gson mGson;
    @Inject
    Application mApplication;

    @Inject
    public ${pageName}Model(IRepositoryManager repositoryManager) {
        super(repositoryManager);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        this.mGson = null;
        this.mApplication = null;
    }
}