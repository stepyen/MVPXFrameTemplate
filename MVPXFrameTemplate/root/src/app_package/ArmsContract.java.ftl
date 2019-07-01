package ${contractPackageName};

import com.stepyen.xframe.mvp.IView;
import com.stepyen.xframe.mvp.IModel;

<#import "root://activities/MVPXFrameTemplate/globals.xml.ftl" as gb>

<@gb.fileHeader />
public interface ${pageName}Contract {
   
    interface View extends IView {

    }
   
    interface Model extends IModel{

    }
}
