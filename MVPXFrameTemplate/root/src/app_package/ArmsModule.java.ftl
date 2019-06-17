package ${moudlePackageName};

<#if needActivity && needFragment>
import com.stepyen.xframe.di.scope.ActivityScope;
<#elseif needActivity>
import com.stepyen.xframe.di.scope.ActivityScope;
<#elseif needFragment>
import com.stepyen.xframe.di.scope.FragmentScope;
</#if>

import dagger.Binds;
import dagger.Module;
import dagger.Provides;

import ${contractPackageName}.${pageName}Contract;
import ${modelPackageName}.${pageName}Model;

<#import "root://activities/MVPXFrameTemplate/globals.xml.ftl" as gb>

<@gb.fileHeader />
@Module
public abstract class ${pageName}Module {

    @Binds
    abstract ${pageName}Contract.Model bind${pageName}Model(${pageName}Model model);
}