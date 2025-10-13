.class public final synthetic Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda37;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LaunchActivity;

.field public final synthetic f$1:Lorg/telegram/messenger/browser/Browser$Progress;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lorg/telegram/messenger/BetaUpdate;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/messenger/browser/Browser$Progress;ZLorg/telegram/messenger/BetaUpdate;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda37;->f$0:Lorg/telegram/ui/LaunchActivity;

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda37;->f$1:Lorg/telegram/messenger/browser/Browser$Progress;

    iput-boolean p3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda37;->f$2:Z

    iput-object p4, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda37;->f$3:Lorg/telegram/messenger/BetaUpdate;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda37;->f$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda37;->f$1:Lorg/telegram/messenger/browser/Browser$Progress;

    iget-boolean v2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda37;->f$2:Z

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda37;->f$3:Lorg/telegram/messenger/BetaUpdate;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/LaunchActivity;->$r8$lambda$vZjJxrsCL-v1FcwZxVmRFaT7pNU(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/messenger/browser/Browser$Progress;ZLorg/telegram/messenger/BetaUpdate;)V

    return-void
.end method
