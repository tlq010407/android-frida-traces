.class public final synthetic Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda67;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stars/StarsController;

.field public final synthetic f$1:[Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Lorg/telegram/messenger/Utilities$Callback;

.field public final synthetic f$4:Lorg/telegram/messenger/Utilities$Callback;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stars/StarsController;[ZILorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda67;->f$0:Lorg/telegram/ui/Stars/StarsController;

    iput-object p2, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda67;->f$1:[Z

    iput p3, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda67;->f$2:I

    iput-object p4, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda67;->f$3:Lorg/telegram/messenger/Utilities$Callback;

    iput-object p5, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda67;->f$4:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda67;->f$0:Lorg/telegram/ui/Stars/StarsController;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda67;->f$1:[Z

    iget v2, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda67;->f$2:I

    iget-object v3, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda67;->f$3:Lorg/telegram/messenger/Utilities$Callback;

    iget-object v4, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda67;->f$4:Lorg/telegram/messenger/Utilities$Callback;

    move-object v5, p1

    check-cast v5, Ljava/lang/Boolean;

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Stars/StarsController;->$r8$lambda$zcOFQ6YN5Xq-O0Jcn6o9mWXitk0(Lorg/telegram/ui/Stars/StarsController;[ZILorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Boolean;)V

    return-void
.end method
