.class public final synthetic Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda115;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/Utilities$Callback2;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/Utilities$Callback2;ZLjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda115;->f$0:Lorg/telegram/messenger/Utilities$Callback2;

    iput-boolean p2, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda115;->f$1:Z

    iput-object p3, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda115;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda115;->f$0:Lorg/telegram/messenger/Utilities$Callback2;

    iget-boolean v1, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda115;->f$1:Z

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda115;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Stars/StarsController;->$r8$lambda$g2Yu4hA79lPjHRDzxDUjcEH5u2I(Lorg/telegram/messenger/Utilities$Callback2;ZLjava/lang/String;)V

    return-void
.end method
