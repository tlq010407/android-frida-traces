.class public final synthetic Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

.field public final synthetic f$1:Lorg/telegram/messenger/MediaController$PhotoEntry;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Lorg/telegram/messenger/MediaController$PhotoEntry;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda32;->f$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda32;->f$1:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iput-boolean p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda32;->f$2:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda32;->f$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda32;->f$1:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda32;->f$2:Z

    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->$r8$lambda$1s4U2z0Pr-xoCfS2Rq6QYQ5kAFI(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Lorg/telegram/messenger/MediaController$PhotoEntry;ZLandroid/view/View;)V

    return-void
.end method
