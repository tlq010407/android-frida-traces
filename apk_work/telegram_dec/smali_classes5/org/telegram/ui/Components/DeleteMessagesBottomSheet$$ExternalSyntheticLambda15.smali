.class public final synthetic Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$IndexedConsumer;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;

.field public final synthetic f$1:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda15;->f$0:Ljava/util/ArrayList;

    iput-object p2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda15;->f$1:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda15;->f$0:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda15;->f$1:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    check-cast p1, Lorg/telegram/tgnet/TLObject;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->$r8$lambda$s_jGyvEN6tSYjEMcZZE95YFFEDM(Ljava/util/ArrayList;Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;Lorg/telegram/tgnet/TLObject;I)V

    return-void
.end method
