package ${ativityPackageName};

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;

import com.stepyen.xframe.base.SBaseActivity;
import com.stepyen.xframe.di.component.AppComponent;
import com.stepyen.xframe.widget.actionbar.TitleBar;

import ${componentPackageName}.Dagger${pageName}Component;
import ${contractPackageName}.${pageName}Contract;
import ${presenterPackageName}.${pageName}Presenter;

import ${packageName}.R;

<#import "root://activities/MVPXFrameTemplate/globals.xml.ftl" as gb>

<@gb.fileHeader />
public class ${pageName}Activity extends SBaseActivity<${pageName}Presenter> implements ${pageName}Contract.View {

    @Override
    public void setupActivityComponent(@NonNull AppComponent appComponent) {
        Dagger${pageName}Component //如找不到该类,请编译一下项目
                .builder()
                .appComponent(appComponent)
                .view(this)
                .build()
                .inject(this);
    }
	
	@Override
    protected TitleBar initTitleBar() {
        TitleBar titleBar = super.initTitleBar();
        return titleBar;
    }

    @Override
    public int getLayoutId() {
        return R.layout.${activityLayoutName};
    }

    @Override
    public void initData(@Nullable Bundle savedInstanceState) {
		 super.initData(savedInstanceState);
    }

}
