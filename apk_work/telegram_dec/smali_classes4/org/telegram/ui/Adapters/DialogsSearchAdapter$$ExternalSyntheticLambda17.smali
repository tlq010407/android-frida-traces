.class public final synthetic Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lorg/telegram/ui/Cells/GraySectionCell;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/util/ArrayList;ILorg/telegram/ui/Cells/GraySectionCell;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda17;->f$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    iput-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda17;->f$1:Ljava/util/ArrayList;

    iput p3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda17;->f$2:I

    iput-object p4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda17;->f$3:Lorg/telegram/ui/Cells/GraySectionCell;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda17;->f$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda17;->f$1:Ljava/util/ArrayList;

    iget v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda17;->f$2:I

    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda17;->f$3:Lorg/telegram/ui/Cells/GraySectionCell;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->$r8$lambda$9VVDhfzZXUG7hTG8p1Q9cXSS63s(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/util/ArrayList;ILorg/telegram/ui/Cells/GraySectionCell;)V

    return-void
.end method
