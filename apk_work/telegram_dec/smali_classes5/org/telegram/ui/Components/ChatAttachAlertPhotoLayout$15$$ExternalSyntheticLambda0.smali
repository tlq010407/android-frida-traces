.class public final synthetic Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;ZZI)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15$$ExternalSyntheticLambda0;->f$1:Z

    iput-boolean p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15$$ExternalSyntheticLambda0;->f$2:Z

    iput p4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15$$ExternalSyntheticLambda0;->f$1:Z

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15$$ExternalSyntheticLambda0;->f$2:Z

    iget v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15$$ExternalSyntheticLambda0;->f$3:I

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, v1, v2, v3, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;->$r8$lambda$3TM_FJddPfiFddCCe8l8vUxfDPw(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;ZZILjava/lang/Long;)V

    return-void
.end method
