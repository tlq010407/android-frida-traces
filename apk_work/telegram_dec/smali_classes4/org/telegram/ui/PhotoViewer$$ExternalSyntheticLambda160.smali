.class public final synthetic Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda160;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PhotoViewer;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PhotoViewer;Ljava/lang/String;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda160;->f$0:Lorg/telegram/ui/PhotoViewer;

    iput-object p2, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda160;->f$1:Ljava/lang/String;

    iput-boolean p3, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda160;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda160;->f$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda160;->f$1:Ljava/lang/String;

    iget-boolean v2, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda160;->f$2:Z

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer;->$r8$lambda$CzI1Y0Zj9KrnxfRRrh-fHWUApYI(Lorg/telegram/ui/PhotoViewer;Ljava/lang/String;Z)V

    return-void
.end method
