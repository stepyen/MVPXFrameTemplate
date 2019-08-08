package ${modelPackageName}

import android.app.Application
import com.google.gson.Gson
import com.stepyen.xframe.integration.IRepositoryManager
import com.stepyen.xframe.mvp.BaseModel
import javax.inject.Inject


<#if needActivity && needFragment>
import com.stepyen.xframe.di.scope.ActivityScope
<#elseif needActivity>
import com.stepyen.xframe.di.scope.ActivityScope
<#elseif needFragment>
import com.stepyen.xframe.di.scope.FragmentScope
</#if>

import ${contractPackageName}.${pageName}Contract

<#import "root://activities/MVPXFrameTemplate/globals.xml.ftl" as gb>

<@gb.fileHeader />
<#if needActivity && needFragment>
@ActivityScope
<#elseif needActivity>
@ActivityScope
<#elseif needFragment>
@FragmentScope
</#if>
class ${pageName}Model
@Inject
constructor(repositoryManager: IRepositoryManager) : BaseModel(repositoryManager), ${pageName}Contract.Model{
    @Inject
    lateinit var mGson:Gson;
    @Inject
    lateinit var mApplication:Application;

    override fun onDestroy() {
          super.onDestroy();
    }
}
