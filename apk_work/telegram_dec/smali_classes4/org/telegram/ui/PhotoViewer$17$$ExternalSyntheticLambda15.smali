.class public final synthetic Lorg/telegram/ui/PhotoViewer$17$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PhotoViewer$17;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PhotoViewer$17;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$17$$ExternalSyntheticLambda15;->f$0:Lorg/telegram/ui/PhotoViewer$17;

    iput-boolean p2, p0, Lorg/telegram/ui/PhotoViewer$17$$ExternalSyntheticLambda15;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$17$$ExternalSyntheticLambda15;->f$0:Lorg/telegram/ui/PhotoViewer$17;

    iget-boolean v1, p0, Lorg/telegram/ui/PhotoViewer$17$$ExternalSyntheticLambda15;->f$1:Z

    check-cast p1, Landroid/net/Uri;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/PhotoViewer$17;->$r8$lambda$LvD8u8jyTZRZ6GEuLFE1hK8iEA8(Lorg/telegram/ui/PhotoViewer$17;ZLandroid/net/Uri;)V

    return-void
.end method
