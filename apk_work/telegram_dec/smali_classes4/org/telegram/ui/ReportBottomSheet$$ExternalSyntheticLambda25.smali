.class public final synthetic Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field public final synthetic f$3:[B

.field public final synthetic f$4:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public final synthetic f$5:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/tgnet/TLObject;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;[BLorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda25;->f$0:Lorg/telegram/tgnet/TLObject;

    iput-object p2, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda25;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda25;->f$2:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-object p4, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda25;->f$3:[B

    iput-object p5, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda25;->f$4:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p6, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda25;->f$5:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda25;->f$0:Lorg/telegram/tgnet/TLObject;

    iget-object v1, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda25;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda25;->f$2:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object v3, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda25;->f$3:[B

    iget-object v4, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda25;->f$4:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v5, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda25;->f$5:Ljava/lang/Runnable;

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/ReportBottomSheet;->$r8$lambda$aK11pUqREi_nmZM03TbUDNd6tSc(Lorg/telegram/tgnet/TLObject;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;[BLorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V

    return-void
.end method
