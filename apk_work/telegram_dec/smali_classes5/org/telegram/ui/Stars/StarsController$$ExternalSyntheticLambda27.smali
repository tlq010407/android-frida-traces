.class public final synthetic Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stars/StarsController;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stars/StarsController;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda27;->f$0:Lorg/telegram/ui/Stars/StarsController;

    iput-boolean p2, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda27;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda27;->f$0:Lorg/telegram/ui/Stars/StarsController;

    iget-boolean v1, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda27;->f$1:Z

    check-cast p1, Ljava/util/HashSet;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Stars/StarsController;->$r8$lambda$uXH8rQE2M6SGRR7Olan2U9YZxt4(Lorg/telegram/ui/Stars/StarsController;ZLjava/util/HashSet;)V

    return-void
.end method
