.class Lorg/telegram/ui/ReportBottomSheet$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ReportBottomSheet$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ReportBottomSheet;->openSponsored(ILandroid/content/Context;JLorg/telegram/tgnet/TLRPC$TL_sponsoredMessage;Lorg/telegram/ui/Components/BulletinFactory;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bulletinFactory:Lorg/telegram/ui/Components/BulletinFactory;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$done:Ljava/lang/Runnable;

.field final synthetic val$resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field final synthetic val$showPremium:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$H1FLXYhbApWbLaXPsE-7oTlVdbY(Ljava/lang/Runnable;Lorg/telegram/ui/Components/BulletinFactory;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/ReportBottomSheet$5;->lambda$onReported$1(Ljava/lang/Runnable;Lorg/telegram/ui/Components/BulletinFactory;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SMieQ2J2V2XrVdL9OXrJEEZDtV0(Ljava/lang/Runnable;Lorg/telegram/ui/Components/BulletinFactory;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ReportBottomSheet$5;->lambda$onHidden$2(Ljava/lang/Runnable;Lorg/telegram/ui/Components/BulletinFactory;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Yjiql7Y_qwIMTVRHRRLr3ir7FfU(Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/ReportBottomSheet$5;->lambda$onReported$0(Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Runnable;Lorg/telegram/ui/Components/BulletinFactory;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ReportBottomSheet$5;->val$done:Ljava/lang/Runnable;

    iput-object p2, p0, Lorg/telegram/ui/ReportBottomSheet$5;->val$bulletinFactory:Lorg/telegram/ui/Components/BulletinFactory;

    iput-object p3, p0, Lorg/telegram/ui/ReportBottomSheet$5;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lorg/telegram/ui/ReportBottomSheet$5;->val$resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-object p5, p0, Lorg/telegram/ui/ReportBottomSheet$5;->val$showPremium:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onHidden$2(Ljava/lang/Runnable;Lorg/telegram/ui/Components/BulletinFactory;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    sget p0, Lorg/telegram/messenger/R$string;->AdHidden:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/BulletinFactory;->createAdReportedBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private static synthetic lambda$onReported$0(Landroid/content/Context;)V
    .locals 1

    const-string v0, "https://promote.telegram.org/guidelines"

    invoke-static {p0, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$onReported$1(Ljava/lang/Runnable;Lorg/telegram/ui/Components/BulletinFactory;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    sget p0, Lorg/telegram/messenger/R$string;->AdReported:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lorg/telegram/ui/ReportBottomSheet$5$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2}, Lorg/telegram/ui/ReportBottomSheet$5$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;)V

    const/4 p2, -0x1

    const/4 v1, 0x2

    invoke-static {p0, p2, v1, v0, p3}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/BulletinFactory;->createAdReportedBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method


# virtual methods
.method public onHidden()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/ReportBottomSheet$5;->val$done:Ljava/lang/Runnable;

    iget-object v1, p0, Lorg/telegram/ui/ReportBottomSheet$5;->val$bulletinFactory:Lorg/telegram/ui/Components/BulletinFactory;

    new-instance v2, Lorg/telegram/ui/ReportBottomSheet$5$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/ReportBottomSheet$5$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;Lorg/telegram/ui/Components/BulletinFactory;)V

    const-wide/16 v0, 0xc8

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onPremiumRequired()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ReportBottomSheet$5;->val$showPremium:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onReported()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/ReportBottomSheet$5;->val$done:Ljava/lang/Runnable;

    iget-object v1, p0, Lorg/telegram/ui/ReportBottomSheet$5;->val$bulletinFactory:Lorg/telegram/ui/Components/BulletinFactory;

    iget-object v2, p0, Lorg/telegram/ui/ReportBottomSheet$5;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lorg/telegram/ui/ReportBottomSheet$5;->val$resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance v4, Lorg/telegram/ui/ReportBottomSheet$5$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/telegram/ui/ReportBottomSheet$5$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Runnable;Lorg/telegram/ui/Components/BulletinFactory;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const-wide/16 v0, 0xc8

    invoke-static {v4, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method
