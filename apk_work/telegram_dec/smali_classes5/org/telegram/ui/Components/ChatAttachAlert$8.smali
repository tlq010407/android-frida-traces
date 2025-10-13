.class Lorg/telegram/ui/Components/ChatAttachAlert$8;
.super Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

.field final synthetic val$entry:Lorg/telegram/messenger/MediaController$PhotoEntry;


# direct methods
.method public static synthetic $r8$lambda$fZ1EhSCk1cLJ6IW-w_4oa6-5AkI(Lorg/telegram/ui/Components/ChatAttachAlert$8;Lorg/telegram/messenger/MediaController$PhotoEntry;ZIZLjava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/ChatAttachAlert$8;->lambda$sendButtonPressed$0(Lorg/telegram/messenger/MediaController$PhotoEntry;ZIZLjava/lang/Long;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/messenger/MediaController$PhotoEntry;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$8;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$8;->val$entry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;-><init>()V

    return-void
.end method

.method private synthetic lambda$sendButtonPressed$0(Lorg/telegram/messenger/MediaController$PhotoEntry;ZIZLjava/lang/Long;)V
    .locals 13

    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    move-object v2, p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert$8;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    invoke-interface {p0}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->isCaptionAbove()Z

    move-result v9

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    const/4 v3, 0x7

    move v5, p2

    move/from16 v6, p3

    move/from16 v10, p4

    invoke-interface/range {v2 .. v12}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->didPressedButton(IZZIJZZJ)V

    return-void
.end method


# virtual methods
.method public allowCaption()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public sendButtonPressed(ILorg/telegram/messenger/VideoEditedInfo;ZIZ)V
    .locals 9

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$8;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->sent:Z

    iget-object v1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$8;->val$entry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iput-object p2, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-interface {p0}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->getDialogId()J

    move-result-wide v1

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$8;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->getAdditionalMessagesCount()I

    move-result p2

    add-int/2addr p2, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$8;->val$entry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$8$$ExternalSyntheticLambda0;

    move-object v3, v0

    move-object v4, p0

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Components/ChatAttachAlert$8$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert$8;Lorg/telegram/messenger/MediaController$PhotoEntry;ZIZ)V

    invoke-static {p1, v1, v2, p2, v0}, Lorg/telegram/ui/Components/AlertsCreator;->ensurePaidMessageConfirmation(IJILorg/telegram/messenger/Utilities$Callback;)Z

    return-void
.end method
