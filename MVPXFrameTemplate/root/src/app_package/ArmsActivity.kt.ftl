package ${ativityPackageName}

import android.os.Bundle
import android.view.View
import androidx.annotation.NonNull
import androidx.annotation.Nullable
import com.alibaba.android.arouter.facade.annotation.Route
import com.stepyen.commonsdk.base.AppBaseActivity
import com.stepyen.commonsdk.constant.RouterHub
import com.stepyen.xframe.di.component.AppComponent
import com.stepyen.xui.widget.actionbar.TitleBar

import ${componentPackageName}.Dagger${pageName}Component
import ${moudlePackageName}.${pageName}Module
import ${contractPackageName}.${pageName}Contract
import ${presenterPackageName}.${pageName}Presenter

import ${packageName}.R


<#import "root://activities/MVPXFrameTemplate/globals.xml.ftl" as gb>

<@gb.fileHeader />
/**
 * 如果没presenter
 * 你可以这样写
 *
 * @ActivityScope(請注意命名空間) class NullObjectPresenterByActivity
 * @Inject constructor() : IPresenter {
 * override fun onStart() {
 * }
 *
 * override fun onDestroy() {
 * }
 * }
 */
@Route(path = RouterHub.APP)
class ${pageName}Activity : AppBaseActivity<${pageName}Presenter>() , ${pageName}Contract.View {

    override fun setupActivityComponent(appComponent:AppComponent) {
        Dagger${pageName}Component //如找不到该类,请编译一下项目
                .builder()
                .appComponent(appComponent)
                .${extractLetters(pageName[0]?lower_case)}${pageName?substring(1,pageName?length)}Module(${pageName}Module(this))
                .build()
                .inject(this)
    }

    override fun initTitleBar(): View {
        return super.initTitleBar() as TitleBar
    }

    override fun getLayoutId(): Int {
        return R.layout.${activityLayoutName}
    }


    override fun initData(@Nullable savedInstanceState: Bundle?) {
        super.initData(savedInstanceState)

    }

    override fun onLoad() {

    }
}





