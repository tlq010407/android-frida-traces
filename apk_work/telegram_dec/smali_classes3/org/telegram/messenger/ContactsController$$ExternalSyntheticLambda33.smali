.class public final synthetic Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda33;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/ContactsController;

.field public final synthetic f$1:Ljava/util/HashMap;

.field public final synthetic f$2:Ljava/util/ArrayList;

.field public final synthetic f$3:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda33;->f$0:Lorg/telegram/messenger/ContactsController;

    iput-object p2, p0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda33;->f$1:Ljava/util/HashMap;

    iput-object p3, p0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda33;->f$2:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda33;->f$3:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda33;->f$0:Lorg/telegram/messenger/ContactsController;

    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda33;->f$1:Ljava/util/HashMap;

    iget-object v2, p0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda33;->f$2:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda33;->f$3:Ljava/util/HashMap;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/ContactsController;->$r8$lambda$5KFzcMMI3yE1P9g9ZFFf0gc1_qo(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    return-void
.end method
