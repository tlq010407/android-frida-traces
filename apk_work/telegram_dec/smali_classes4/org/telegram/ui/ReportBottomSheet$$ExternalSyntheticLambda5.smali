.class public final synthetic Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;

.field public final synthetic f$1:Lorg/telegram/ui/Components/BulletinFactory;

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;Lorg/telegram/ui/Components/BulletinFactory;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Runnable;

    iput-object p2, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda5;->f$1:Lorg/telegram/ui/Components/BulletinFactory;

    iput-object p3, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda5;->f$2:Landroid/content/Context;

    iput-object p4, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda5;->f$3:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Runnable;

    iget-object v1, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda5;->f$1:Lorg/telegram/ui/Components/BulletinFactory;

    iget-object v2, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda5;->f$2:Landroid/content/Context;

    iget-object v3, p0, Lorg/telegram/ui/ReportBottomSheet$$ExternalSyntheticLambda5;->f$3:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/ReportBottomSheet;->$r8$lambda$bTHvJhLzcmJEZrs2qBhlG5EJbD4(Ljava/lang/Runnable;Lorg/telegram/ui/Components/BulletinFactory;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method
