package ${contractPackageName}

import com.stepyen.xframe.mvp.ILoadView
import com.stepyen.xframe.mvp.IModel

<#import "root://activities/MVPXFrameTemplate/globals.xml.ftl" as gb>

<@gb.fileHeader />
interface ${pageName}Contract {
	
    interface View : ILoadView{
	
	}

	
    interface Model : IModel{
	
	}

}
