.class public final synthetic Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:Z

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;Ljava/util/ArrayList;ZI)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$$ExternalSyntheticLambda9;->f$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$$ExternalSyntheticLambda9;->f$1:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$$ExternalSyntheticLambda9;->f$2:Z

    iput p4, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$$ExternalSyntheticLambda9;->f$3:I

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$$ExternalSyntheticLambda9;->f$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$$ExternalSyntheticLambda9;->f$1:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$$ExternalSyntheticLambda9;->f$2:Z

    iget v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$$ExternalSyntheticLambda9;->f$3:I

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, v1, v2, v3, p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->$r8$lambda$T6Wrpf5JKVaTaR4vnze8HCPp4NA(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;Ljava/util/ArrayList;ZILjava/lang/Long;)V

    return-void
.end method
