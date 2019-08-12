package ${fragmentPackageName}

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.stepyen.commonsdk.base.AppBaseFragment;
import com.stepyen.xframe.di.component.AppComponent;
import com.stepyen.xui.widget.actionbar.TitleBar;

import ${componentPackageName}.Dagger${pageName}Component
import ${contractPackageName}.${pageName}Contract
import ${presenterPackageName}.${pageName}Presenter
import ${moudlePackageName}.${pageName}Module

import ${packageName}.R


<#import "root://activities/MVPXFrameTemplate/globals.xml.ftl" as gb>

<@gb.fileHeader />
class ${pageName}Fragment : AppBaseFragment<${pageName}Presenter>() , ${pageName}Contract.View{
    companion object {
    fun newInstance():${pageName}Fragment {
        val fragment = ${pageName}Fragment()
        return fragment
    }
    }


    override fun setupFragmentComponent(appComponent:AppComponent) {
        Dagger${pageName}Component //如找不到该类,请编译一下项目
                .builder()
                .appComponent(appComponent)
                .${extractLetters(pageName[0]?lower_case)}${pageName?substring(1,pageName?length)}Module(${pageName}Module(this))
                .build()
                .inject(this)
    }

	override fun initTitleBar(): View? {
        return super.initTitleBar() as TitleBar
    }

    override fun initView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?):View{
        return inflater.inflate(R.layout.${fragmentLayoutName}, container, false);
    }

    override fun initData(savedInstanceState:Bundle?) {
		super.initData(savedInstanceState)
    }

	override fun onLoad() {

    }


    override fun setData(data: Any?) {

    }
}

