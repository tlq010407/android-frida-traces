.class Lorg/telegram/ui/ReportBottomSheet$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ReportBottomSheet$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ReportBottomSheet;->open(ILandroid/content/Context;JZLjava/util/ArrayList;Lorg/telegram/ui/Components/BulletinFactory;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;[BLjava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bulletinFactory:Lorg/telegram/ui/Components/BulletinFactory;

.field final synthetic val$done:[Z

.field final synthetic val$whenDone:Lorg/telegram/messenger/Utilities$Callback;


# direct methods
.method public static synthetic $r8$lambda$BigYiaLE7uVWxqGsnUXTnyV2DyI(Lorg/telegram/ui/Components/BulletinFactory;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/ReportBottomSheet$3;->lambda$onReported$0(Lorg/telegram/ui/Components/BulletinFactory;)V

    return-void
.end method

.method constructor <init>([ZLorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/Components/BulletinFactory;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ReportBottomSheet$3;->val$done:[Z

    iput-object p2, p0, Lorg/telegram/ui/ReportBottomSheet$3;->val$whenDone:Lorg/telegram/messenger/Utilities$Callback;

    iput-object p3, p0, Lorg/telegram/ui/ReportBottomSheet$3;->val$bulletinFactory:Lorg/telegram/ui/Components/BulletinFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onReported$0(Lorg/telegram/ui/Components/BulletinFactory;)V
    .locals 3

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p0, :cond_1

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    :cond_1
    if-nez p0, :cond_2

    return-void

    :cond_2
    sget v0, Lorg/telegram/messenger/R$raw;->msg_antispam:I

    sget v1, Lorg/telegram/messenger/R$string;->ReportChatSent:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->Reported2:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    const/16 v0, 0x1388

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Bulletin;->setDuration(I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method


# virtual methods
.method public synthetic onHidden()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/ReportBottomSheet$Listener$-CC;->$default$onHidden(Lorg/telegram/ui/ReportBottomSheet$Listener;)V

    return-void
.end method

.method public synthetic onPremiumRequired()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/ReportBottomSheet$Listener$-CC;->$default$onPremiumRequired(Lorg/telegram/ui/ReportBottomSheet$Listener;)V

    return-void
.end method

.method public onReported()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/ReportBottomSheet$3;->val$done:[Z

    const/4 v1, 0x0

    aget-boolean v2, v0, v1

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/ReportBottomSheet$3;->val$whenDone:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    aput-boolean v3, v0, v1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ReportBottomSheet$3;->val$bulletinFactory:Lorg/telegram/ui/Components/BulletinFactory;

    new-instance v1, Lorg/telegram/ui/ReportBottomSheet$3$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ReportBottomSheet$3$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/BulletinFactory;)V

    const-wide/16 v2, 0xc8

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method
