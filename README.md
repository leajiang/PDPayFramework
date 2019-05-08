# PDPayFramework 

    现金贷使用的Framework

    使用说明：
    
    podfile中加入pod 'PDPayFramework'

    1.使用时请导入库头文件#import <PDPayFramework/PDPayManager.h>

    2.添加静态初始化方法

    +(void)initializePDPaySDK;

    3.使用PDPayManager静态方法

    /**
    进去二维码扫描界面

    @param vc 当前控制器
    @param aUserid 当前用户ID
    */
    + (void)showPDQRCodeViewController:(UIViewController *)vc withUserid:(NSString *)aUserid;

    /**
    进入贷款列表界面

    @param vc 当前控制器
    @param aUserId 当前用户ID
    */
    + (void)showMoneyListController:(UIViewController *)vc withUserid:(NSString *)aUserId;


    工程中请添加相机，相册，麦克风，通讯录权限
    
    AppDelegate中添加
    - (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options
    {
        if ([PDSingleton shareSingle].loadPaymentPayType == 0) {//现金贷支付回调
            return [WXApi handleOpenURL:url delegate:[WXApiManager sharedManager]];
        }
    }
    

