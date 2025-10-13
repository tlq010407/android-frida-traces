.class public final synthetic Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda35;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesStorage;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:Lorg/telegram/messenger/Utilities$Callback3;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;Lorg/telegram/messenger/Utilities$Callback3;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda35;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iput-object p2, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda35;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda35;->f$2:Lorg/telegram/messenger/Utilities$Callback3;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda35;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda35;->f$1:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsController$$ExternalSyntheticLambda35;->f$2:Lorg/telegram/messenger/Utilities$Callback3;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Stars/StarsController;->$r8$lambda$aX5YnyaCL8sahsfWpDRqQS4Ffuc(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;Lorg/telegram/messenger/Utilities$Callback3;)V

    return-void
.end method
