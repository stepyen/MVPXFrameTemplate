package ${presenterPackageName}

import android.app.Application

import com.stepyen.xframe.integration.AppManager
<#if needActivity && needFragment>
import com.stepyen.xframe.di.scope.ActivityScope
<#elseif needActivity>
import com.stepyen.xframe.di.scope.ActivityScope
<#elseif needFragment>
import com.stepyen.xframe.di.scope.FragmentScope
</#if>
import com.stepyen.xframe.mvp.BasePresenter
import com.stepyen.xframe.http.imageloader.ImageLoader
import me.jessyan.rxerrorhandler.core.RxErrorHandler
import javax.inject.Inject

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
class ${pageName}Presenter
@Inject
constructor(model: ${pageName}Contract.Model, rootView: ${pageName}Contract.View) :
BasePresenter<${pageName}Contract.Model, ${pageName}Contract.View>(model,rootView) {
    @Inject
    lateinit var mErrorHandler:RxErrorHandler
    @Inject
    lateinit var mApplication:Application
    @Inject
    lateinit var mImageLoader:ImageLoader
    @Inject
    lateinit var mAppManager:AppManager


    override fun onDestroy() {
          super.onDestroy();
    }
}
