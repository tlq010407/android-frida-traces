.class public final synthetic Lorg/telegram/ui/SecretMediaViewer$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/SecretMediaViewer;

.field public final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/SecretMediaViewer;Landroid/app/Activity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$$ExternalSyntheticLambda6;->f$0:Lorg/telegram/ui/SecretMediaViewer;

    iput-object p2, p0, Lorg/telegram/ui/SecretMediaViewer$$ExternalSyntheticLambda6;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final makeView()Landroid/view/View;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$$ExternalSyntheticLambda6;->f$0:Lorg/telegram/ui/SecretMediaViewer;

    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$$ExternalSyntheticLambda6;->f$1:Landroid/app/Activity;

    invoke-static {v0, v1}, Lorg/telegram/ui/SecretMediaViewer;->$r8$lambda$rudsVOkVWXRVpouJDU9EcHMxyQ0(Lorg/telegram/ui/SecretMediaViewer;Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
