.class public Lorg/telegram/ui/ContactAddActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ContactAddActivity$ContactAddActivityDelegate;
    }
.end annotation


# instance fields
.field private addContact:Z

.field private avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private avatarAnimation:Landroid/animation/AnimatorSet;

.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImage:Lorg/telegram/ui/Components/BackupImageView;

.field private avatarOverlay:Landroid/view/View;

.field private avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

.field private checkBoxCell:Lorg/telegram/ui/Cells/CheckBoxCell;

.field private delegate:Lorg/telegram/ui/ContactAddActivity$ContactAddActivityDelegate;

.field private dialogPhotos:Lorg/telegram/messenger/MessagesController$DialogPhotos;

.field private doneButton:Landroid/view/View;

.field private firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private firstNameFromCard:Ljava/lang/String;

.field private imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

.field private infoTextView:Landroid/widget/TextView;

.field private lastNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private lastNameFromCard:Ljava/lang/String;

.field private linearLayout:Landroid/widget/LinearLayout;

.field private nameTextView:Landroid/widget/TextView;

.field private needAddException:Z

.field private oldAvatarView:Lorg/telegram/ui/Components/BackupImageView;

.field oldPhotoCell:Lorg/telegram/ui/Cells/TextCell;

.field private onlineTextView:Landroid/widget/TextView;

.field paused:Z

.field private phone:Ljava/lang/String;

.field private photoSelectedType:I

.field private photoSelectedTypeFinal:I

.field private prevAvatar:Lorg/telegram/tgnet/TLRPC$Photo;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field suggestPhotoMessageFinal:Lorg/telegram/messenger/MessageObject;

.field private user_id:J


# direct methods
.method public static synthetic $r8$lambda$0FOC0esvSyNM2lGE7ZtQpAR9-fw(Lorg/telegram/ui/ContactAddActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ContactAddActivity;->lambda$didUploadFailed$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$3yjKGhLp2WZk6H5oolN6VKiz288(Lorg/telegram/ui/ContactAddActivity;Lorg/telegram/ui/Components/RLottieDrawable;Lorg/telegram/ui/Cells/TextCell;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ContactAddActivity;->lambda$createView$5(Lorg/telegram/ui/Components/RLottieDrawable;Lorg/telegram/ui/Cells/TextCell;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BohQ-elAwMiaUkGXdPSS38bYYAQ(Lorg/telegram/ui/ContactAddActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ContactAddActivity;->lambda$createView$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$E-B0Mf0UnE9waMck5tGJUhM2lFc(Lorg/telegram/ui/ContactAddActivity;Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ContactAddActivity;->lambda$sendPhotoChangedRequest$15(Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$EsuBcbAU8HXIxgyAGaL82Icl31o(Lorg/telegram/ui/ContactAddActivity;Lorg/telegram/ui/ActionBar/BaseFragment;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ContactAddActivity;->lambda$didUploadPhoto$12(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$IirzPyGwgGv1v596gRRMC6CoGMU(Lorg/telegram/ui/ContactAddActivity;Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$User;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ContactAddActivity;->lambda$createView$11(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$User;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M7jysOQDMQJRmcAG5akSHADOxBo()V
    .locals 0

    .line 0
    invoke-static {}, Lorg/telegram/ui/ContactAddActivity;->lambda$createView$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$MLq9ewJls6uQikQTSvQFxfZhLGc(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ContactAddActivity;->lambda$createView$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Myp270xywnMgwncZ_aeKxQmV3Yg(Lorg/telegram/ui/ContactAddActivity;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ContactAddActivity;->lambda$createView$10(Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Qv_leg-U1GwsbYyZcl8wlMUeZVU(Lorg/telegram/ui/ContactAddActivity;Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$FileLocation;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/ContactAddActivity;->lambda$sendPhotoChangedRequest$16(Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$FileLocation;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R6Hd7gjnA3L-0IzvXDmd_zGagyU(Lorg/telegram/ui/ContactAddActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ContactAddActivity;->lambda$createView$2(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$TZm0q6tv2qoDJos8Cu5wsDJLzhc(Lorg/telegram/ui/ContactAddActivity;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/Components/RLottieDrawable;Lorg/telegram/ui/Cells/TextCell;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ContactAddActivity;->lambda$createView$6(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/Components/RLottieDrawable;Lorg/telegram/ui/Cells/TextCell;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Vdb9CouAxB4kYPcC1lY3qkOe1MU(Lorg/telegram/ui/ContactAddActivity;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/Components/RLottieDrawable;Lorg/telegram/ui/Cells/TextCell;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ContactAddActivity;->lambda$createView$9(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/Components/RLottieDrawable;Lorg/telegram/ui/Cells/TextCell;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Yv3qDHbupvNsFO0WOskvRfEhOMU(Lorg/telegram/ui/ContactAddActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ContactAddActivity;->lambda$createView$1(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$q41eiz52mVHvai4dRVPHtjfw0q0(Lorg/telegram/ui/ContactAddActivity;Lorg/telegram/ui/Components/RLottieDrawable;Lorg/telegram/ui/Cells/TextCell;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ContactAddActivity;->lambda$createView$8(Lorg/telegram/ui/Components/RLottieDrawable;Lorg/telegram/ui/Cells/TextCell;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rHP6AWAgs1TW05pyCk4JSz2mqmM(Lorg/telegram/ui/ContactAddActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ContactAddActivity;->lambda$getThemeDescriptions$17()V

    return-void
.end method

.method public static synthetic $r8$lambda$vu1mfDdXJ1ZduZShty1187ZP8Aw()V
    .locals 0

    .line 0
    invoke-static {}, Lorg/telegram/ui/ContactAddActivity;->lambda$createView$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$zj_kQP_ralT4xhsTQi2Y5anp97Q(Lorg/telegram/ui/ContactAddActivity;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$VideoSize;DZ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lorg/telegram/ui/ContactAddActivity;->lambda$didUploadPhoto$13(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$VideoSize;DZ)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    new-instance p1, Lorg/telegram/ui/Components/ImageUpdater;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, v0}, Lorg/telegram/ui/Components/ImageUpdater;-><init>(ZIZ)V

    iput-object p1, p0, Lorg/telegram/ui/ContactAddActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    iput-object p2, p0, Lorg/telegram/ui/ContactAddActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance p1, Lorg/telegram/ui/Components/ImageUpdater;

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0, p2}, Lorg/telegram/ui/Components/ImageUpdater;-><init>(ZIZ)V

    iput-object p1, p0, Lorg/telegram/ui/ContactAddActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ContactAddActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ContactAddActivity;->firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ContactAddActivity;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/ContactAddActivity;->user_id:J

    return-wide v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ContactAddActivity;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ContactAddActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/ContactAddActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ContactAddActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ContactAddActivity;)Lorg/telegram/ui/Components/RadialProgressView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ContactAddActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ContactAddActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ContactAddActivity;->avatarOverlay:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ContactAddActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ContactAddActivity;->lastNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ContactAddActivity;)Lorg/telegram/ui/Cells/CheckBoxCell;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ContactAddActivity;->checkBoxCell:Lorg/telegram/ui/Cells/CheckBoxCell;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ContactAddActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ContactAddActivity;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ContactAddActivity;)Lorg/telegram/ui/ContactAddActivity$ContactAddActivityDelegate;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ContactAddActivity;->delegate:Lorg/telegram/ui/ContactAddActivity$ContactAddActivityDelegate;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ContactAddActivity;)Lorg/telegram/ui/Components/BackupImageView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ContactAddActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/ContactAddActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ContactAddActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/ContactAddActivity;)Lorg/telegram/ui/Components/BackupImageView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/ContactAddActivity;->oldAvatarView:Lorg/telegram/ui/Components/BackupImageView;

    return-object p0
.end method

.method private createServiceMessageLocal(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;Z)V
    .locals 4

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/SendMessagesHelper;->getNextRandomId()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iget-wide v1, p0, Lorg/telegram/ui/ContactAddActivity;->user_id:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v1, v1, 0x100

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v2, p0, Lorg/telegram/ui/ContactAddActivity;->user_id:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestProfilePhoto;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageActionSuggestProfilePhoto;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_photo;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_photo;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean p3, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->video:Z

    iget-object p1, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    const/4 p2, 0x0

    new-array p3, p2, [B

    iput-object p3, p1, Lorg/telegram/tgnet/TLRPC$Photo;->file_reference:[B

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance p3, Lorg/telegram/messenger/MessageObject;

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-direct {p3, v1, v0, p2, p2}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    iput-object p3, p0, Lorg/telegram/ui/ContactAddActivity;->suggestPhotoMessageFinal:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-wide v1, p0, Lorg/telegram/ui/ContactAddActivity;->user_id:J

    invoke-virtual {p3, v1, v2, p1, p2}, Lorg/telegram/messenger/MessagesController;->updateInterfaceWithMessages(JLjava/util/ArrayList;I)Z

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessagesController;->photoSuggestion:Landroid/util/SparseArray;

    iget p2, v0, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    iget-object p3, p0, Lorg/telegram/ui/ContactAddActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-virtual {p1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private getPhone()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/ContactAddActivity;->user_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ContactAddActivity;->phone:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method private static synthetic lambda$createView$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$createView$1(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ContactAddActivity;->lastNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p1, p0, Lorg/telegram/ui/ContactAddActivity;->lastNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$createView$10(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 10

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ContactAddActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-wide/16 v7, 0x0

    const/4 v9, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ContactAddActivity;->sendPhotoChangedRequest(Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$VideoSize;DI)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/ContactAddActivity;->user_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->personal:Z

    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v4, p0, Lorg/telegram/ui/ContactAddActivity;->user_id:J

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->personal_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget v5, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const v6, -0x200001

    and-int/2addr v5, v6

    iput v5, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5, v2, v4}, Lorg/telegram/messenger/MessagesStorage;->updateUserInfo(Lorg/telegram/tgnet/TLRPC$UserFull;Z)V

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/ContactAddActivity;->prevAvatar:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v2, :cond_2

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_id:J

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/16 v5, 0x64

    invoke-static {v2, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v5

    const/16 v6, 0x3e8

    invoke-static {v2, v6}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v2

    if-eqz v5, :cond_1

    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v5, v6, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    :cond_1
    if-eqz v2, :cond_3

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_0

    :cond_2
    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v2, v2, -0x21

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    :cond_3
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1, v1, v0, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    invoke-direct {p0}, Lorg/telegram/ui/ContactAddActivity;->updateCustomPhotoInfo()V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->reloadDialogPhotos:I

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    sget v1, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_AVATAR:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-virtual {p1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$createView$11(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$User;Landroid/view/View;)V
    .locals 6

    sget p3, Lorg/telegram/messenger/R$string;->ResetToOriginalPhotoTitle:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget p3, Lorg/telegram/messenger/R$string;->ResetToOriginalPhotoMessage:I

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "ResetToOriginalPhotoMessage"

    invoke-static {v0, p3, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget p3, Lorg/telegram/messenger/R$string;->Reset:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ContactAddActivity$$ExternalSyntheticLambda12;

    invoke-direct {v4, p0, p2}, Lorg/telegram/ui/ContactAddActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/ContactAddActivity;Lorg/telegram/tgnet/TLRPC$User;)V

    iget-object v5, p0, Lorg/telegram/ui/ContactAddActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/AlertsCreator;->createSimpleAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method

.method private synthetic lambda$createView$2(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ContactAddActivity;->doneButton:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$createView$3(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/ContactAddActivity;->checkBoxCell:Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    return-void
.end method

.method private static synthetic lambda$createView$4()V
    .locals 0

    return-void
.end method

.method private synthetic lambda$createView$5(Lorg/telegram/ui/Components/RLottieDrawable;Lorg/telegram/ui/Cells/TextCell;Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p3, p0, Lorg/telegram/ui/ContactAddActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/ImageUpdater;->isUploadingImage()Z

    move-result p3

    if-nez p3, :cond_0

    const/16 p3, 0x55

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    iget-object p1, p2, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$createView$6(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/Components/RLottieDrawable;Lorg/telegram/ui/Cells/TextCell;Landroid/view/View;)V
    .locals 4

    const/4 p4, 0x1

    iput p4, p0, Lorg/telegram/ui/ContactAddActivity;->photoSelectedType:I

    iget-object v0, p0, Lorg/telegram/ui/ContactAddActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ImageUpdater;->setUser(Lorg/telegram/tgnet/TLRPC$User;)V

    if-eqz p1, :cond_1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ContactAddActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 p4, 0x0

    :goto_2
    new-instance p1, Lorg/telegram/ui/ContactAddActivity$$ExternalSyntheticLambda14;

    invoke-direct {p1}, Lorg/telegram/ui/ContactAddActivity$$ExternalSyntheticLambda14;-><init>()V

    new-instance v2, Lorg/telegram/ui/ContactAddActivity$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0, p2, p3}, Lorg/telegram/ui/ContactAddActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/ContactAddActivity;Lorg/telegram/ui/Components/RLottieDrawable;Lorg/telegram/ui/Cells/TextCell;)V

    const/4 v3, 0x2

    invoke-virtual {v0, p4, p1, v2, v3}, Lorg/telegram/ui/Components/ImageUpdater;->openMenu(ZLjava/lang/Runnable;Landroid/content/DialogInterface$OnDismissListener;I)V

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    const/16 p1, 0x2b

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    iget-object p1, p3, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    return-void
.end method

.method private static synthetic lambda$createView$7()V
    .locals 0

    return-void
.end method

.method private synthetic lambda$createView$8(Lorg/telegram/ui/Components/RLottieDrawable;Lorg/telegram/ui/Cells/TextCell;Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p3, p0, Lorg/telegram/ui/ContactAddActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/ImageUpdater;->isUploadingImage()Z

    move-result p3

    if-nez p3, :cond_0

    const/16 p3, 0x56

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    iget-object p1, p2, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$createView$9(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/Components/RLottieDrawable;Lorg/telegram/ui/Cells/TextCell;Landroid/view/View;)V
    .locals 4

    const/4 p4, 0x2

    iput p4, p0, Lorg/telegram/ui/ContactAddActivity;->photoSelectedType:I

    iget-object p4, p0, Lorg/telegram/ui/ContactAddActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-virtual {p4, p1}, Lorg/telegram/ui/Components/ImageUpdater;->setUser(Lorg/telegram/tgnet/TLRPC$User;)V

    if-eqz p1, :cond_1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    iget-object p4, p0, Lorg/telegram/ui/ContactAddActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    new-instance v2, Lorg/telegram/ui/ContactAddActivity$$ExternalSyntheticLambda10;

    invoke-direct {v2}, Lorg/telegram/ui/ContactAddActivity$$ExternalSyntheticLambda10;-><init>()V

    new-instance v3, Lorg/telegram/ui/ContactAddActivity$$ExternalSyntheticLambda11;

    invoke-direct {v3, p0, p2, p3}, Lorg/telegram/ui/ContactAddActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/ContactAddActivity;Lorg/telegram/ui/Components/RLottieDrawable;Lorg/telegram/ui/Cells/TextCell;)V

    invoke-virtual {p4, p1, v2, v3, v1}, Lorg/telegram/ui/Components/ImageUpdater;->openMenu(ZLjava/lang/Runnable;Landroid/content/DialogInterface$OnDismissListener;I)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    const/16 p1, 0x2b

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    iget-object p1, p3, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    return-void
.end method

.method private synthetic lambda$didUploadFailed$14()V
    .locals 6

    invoke-static {p0}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate$-CC;->$default$didUploadFailed(Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;)V

    iget-object v0, p0, Lorg/telegram/ui/ContactAddActivity;->suggestPhotoMessageFinal:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/ContactAddActivity;->suggestPhotoMessageFinal:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v3, v4, v0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v3, 0x2

    aput-object v0, v4, v3

    invoke-virtual {v1, v2, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$didUploadPhoto$12(Lorg/telegram/ui/ActionBar/BaseFragment;)Z
    .locals 6

    instance-of v0, p1, Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/telegram/ui/ContactAddActivity;->user_id:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ChatActivity;->scrollToLastMessage(ZZ)V

    return v0

    :cond_0
    return v1
.end method

.method private synthetic lambda$didUploadPhoto$13(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$VideoSize;DZ)V
    .locals 12

    move-object v9, p0

    move-object v0, p1

    move-object/from16 v1, p4

    const/4 v10, 0x0

    const/4 v11, 0x1

    iget-object v2, v9, Lorg/telegram/ui/ContactAddActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ImageUpdater;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget v2, v9, Lorg/telegram/ui/ContactAddActivity;->photoSelectedTypeFinal:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v2, v9, Lorg/telegram/ui/ContactAddActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_0

    :cond_1
    if-ne v2, v11, :cond_2

    new-instance v2, Lorg/telegram/ui/ContactAddActivity$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ContactAddActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/ContactAddActivity;)V

    invoke-static {p0, v2}, Lorg/telegram/ui/LNavigation/NavigationExt;->backToFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/LNavigation/NavigationExt$FragmentConsumer;)Z

    :cond_2
    :goto_0
    if-nez p2, :cond_5

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    iget-object v2, v9, Lorg/telegram/ui/ContactAddActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v4, v9, Lorg/telegram/ui/ContactAddActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-static {v4}, Lorg/telegram/messenger/ImageLocation;->getForLocal(Lorg/telegram/tgnet/TLRPC$FileLocation;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    iget-object v5, v9, Lorg/telegram/ui/ContactAddActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-wide v7, v9, Lorg/telegram/ui/ContactAddActivity;->user_id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    const-string v7, "50_50"

    invoke-virtual {v2, v4, v7, v5, v6}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    iget v2, v9, Lorg/telegram/ui/ContactAddActivity;->photoSelectedTypeFinal:I

    if-ne v2, v3, :cond_4

    invoke-direct {p0, v11, v10}, Lorg/telegram/ui/ContactAddActivity;->showAvatarProgress(ZZ)V

    goto :goto_3

    :cond_4
    move/from16 v2, p8

    invoke-direct {p0, p1, v1, v2}, Lorg/telegram/ui/ContactAddActivity;->createServiceMessageLocal(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;Z)V

    goto :goto_3

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, v9, Lorg/telegram/ui/ContactAddActivity;->user_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    iget-object v3, v9, Lorg/telegram/ui/ContactAddActivity;->suggestPhotoMessageFinal:Lorg/telegram/messenger/MessageObject;

    if-nez v3, :cond_7

    if-eqz v2, :cond_7

    if-eqz p3, :cond_6

    const/4 v3, 0x1

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    :goto_2
    invoke-static {p1, v1, v3, v2, v11}, Lorg/telegram/messenger/utils/PhotoUtilities;->applyPhotoToUser(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;ZLorg/telegram/tgnet/TLRPC$User;Z)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v10, v11}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->reloadDialogPhotos:I

    new-array v3, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    sget v3, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_AVATAR:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v3, v4, v10

    invoke-virtual {v0, v2, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_7
    iget-object v2, v9, Lorg/telegram/ui/ContactAddActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v8, v9, Lorg/telegram/ui/ContactAddActivity;->photoSelectedTypeFinal:I

    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ContactAddActivity;->sendPhotoChangedRequest(Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$VideoSize;DI)V

    invoke-direct {p0, v10, v11}, Lorg/telegram/ui/ContactAddActivity;->showAvatarProgress(ZZ)V

    :goto_3
    invoke-direct {p0}, Lorg/telegram/ui/ContactAddActivity;->updateCustomPhotoInfo()V

    return-void
.end method

.method private synthetic lambda$getThemeDescriptions$17()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/ContactAddActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/ContactAddActivity;->user_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ContactAddActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$User;)V

    iget-object v0, p0, Lorg/telegram/ui/ContactAddActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$sendPhotoChangedRequest$15(Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/telegram/ui/ContactAddActivity;->suggestPhotoMessageFinal:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    return-void

    :cond_1
    if-eqz p3, :cond_7

    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_photos_photo;

    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_photos_photo;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/ContactAddActivity;->user_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v4, p0, Lorg/telegram/ui/ContactAddActivity;->user_id:J

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v4, p3, Lorg/telegram/tgnet/TLRPC$TL_photos_photo;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$UserFull;->personal_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget v4, v3, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    const/high16 v5, 0x200000

    or-int/2addr v4, v5

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$UserFull;->flags:I

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lorg/telegram/messenger/MessagesStorage;->updateUserInfo(Lorg/telegram/tgnet/TLRPC$UserFull;Z)V

    :cond_2
    const/4 v3, 0x0

    if-eqz v2, :cond_6

    const/16 v4, 0x64

    invoke-static {p2, v4}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v4

    const/16 v5, 0x3e8

    invoke-static {p2, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p2

    if-eqz v4, :cond_3

    if-eqz p1, :cond_3

    iget v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v5

    iget v6, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    invoke-virtual {v6, p1, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "@50_50"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v4

    invoke-static {v2, v1}, Lorg/telegram/messenger/ImageLocation;->getForUser(Lorg/telegram/tgnet/TLRPC$User;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    invoke-virtual {v4, v5, p1, v6, v0}, Lorg/telegram/messenger/ImageLoader;->replaceImageInCache(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Z)V

    :cond_3
    if-eqz p2, :cond_4

    if-eqz p4, :cond_4

    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    invoke-virtual {p1, p2, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p2

    invoke-virtual {p2, p4, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_4
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_photos_photo;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {p1, v2, v1}, Lorg/telegram/messenger/utils/PhotoUtilities;->applyPhotoToUser(Lorg/telegram/tgnet/TLRPC$Photo;Lorg/telegram/tgnet/TLRPC$User;Z)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p2

    invoke-virtual {p2, p1, v3, v0, v1}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-wide v4, p0, Lorg/telegram/ui/ContactAddActivity;->user_id:J

    invoke-virtual {p2, v4, v5}, Lorg/telegram/messenger/MessagesController;->getDialogPhotos(J)Lorg/telegram/messenger/MessagesController$DialogPhotos;

    move-result-object p2

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$TL_photos_photo;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/MessagesController$DialogPhotos;->addPhotoAtStart(Lorg/telegram/tgnet/TLRPC$Photo;)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/NotificationCenter;->reloadDialogPhotos:I

    new-array p4, v0, [Ljava/lang/Object;

    invoke-virtual {p2, p3, p4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    sget p4, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_AVATAR:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p4, v4, v0

    invoke-virtual {p2, p3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_6

    const/4 p2, 0x2

    const-string p3, "UserCustomPhotoSeted"

    if-ne p5, p2, :cond_5

    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p2

    sget p4, Lorg/telegram/messenger/R$string;->UserCustomPhotoSeted:I

    iget-object p5, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p5, v1, v0

    invoke-static {p3, p4, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :goto_0
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createUsersBulletin(Ljava/util/List;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_1

    :cond_5
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p2

    sget p4, Lorg/telegram/messenger/R$string;->UserCustomPhotoSeted:I

    iget-object p5, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p5, v1, v0

    invoke-static {p3, p4, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_6
    :goto_1
    iput-object v3, p0, Lorg/telegram/ui/ContactAddActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-direct {p0}, Lorg/telegram/ui/ContactAddActivity;->updateCustomPhotoInfo()V

    :cond_7
    return-void
.end method

.method private synthetic lambda$sendPhotoChangedRequest$16(Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$FileLocation;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    new-instance p6, Lorg/telegram/ui/ContactAddActivity$$ExternalSyntheticLambda17;

    move-object v0, p6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p5

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ContactAddActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/ContactAddActivity;Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)V

    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sendPhotoChangedRequest(Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$VideoSize;DI)V
    .locals 7

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadContactProfilePhoto;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadContactProfilePhoto;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/ContactAddActivity;->user_id:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadContactProfilePhoto;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    iput-object p3, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadContactProfilePhoto;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    iget p3, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadContactProfilePhoto;->flags:I

    or-int/2addr p3, v1

    iput p3, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadContactProfilePhoto;->flags:I

    :cond_0
    if-eqz p4, :cond_1

    iput-object p4, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadContactProfilePhoto;->video:Lorg/telegram/tgnet/TLRPC$InputFile;

    iget p3, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadContactProfilePhoto;->flags:I

    iput-wide p6, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadContactProfilePhoto;->video_start_ts:D

    or-int/lit8 p3, p3, 0x6

    iput p3, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadContactProfilePhoto;->flags:I

    :cond_1
    if-eqz p5, :cond_2

    iget p3, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadContactProfilePhoto;->flags:I

    or-int/lit8 p3, p3, 0x20

    iput p3, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadContactProfilePhoto;->flags:I

    iput-object p5, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadContactProfilePhoto;->video_emoji_markup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    :cond_2
    if-ne p8, v1, :cond_3

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadContactProfilePhoto;->suggest:Z

    iget p3, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadContactProfilePhoto;->flags:I

    or-int/lit8 p3, p3, 0x8

    :goto_0
    iput p3, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadContactProfilePhoto;->flags:I

    goto :goto_1

    :cond_3
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadContactProfilePhoto;->save:Z

    iget p3, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadContactProfilePhoto;->flags:I

    or-int/lit8 p3, p3, 0x10

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p3

    new-instance p5, Lorg/telegram/ui/ContactAddActivity$$ExternalSyntheticLambda16;

    move-object v1, p5

    move-object v2, p0

    move-object v3, p1

    move-object v4, p4

    move-object v5, p2

    move v6, p8

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/ContactAddActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/ContactAddActivity;Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$FileLocation;I)V

    invoke-virtual {p3, v0, p5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private showAvatarProgress(ZZ)V
    .locals 8

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/telegram/ui/ContactAddActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/ContactAddActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v3, 0x0

    iput-object v3, p0, Lorg/telegram/ui/ContactAddActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    :cond_1
    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz p2, :cond_3

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/ContactAddActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/ContactAddActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lorg/telegram/ui/ContactAddActivity;->avatarOverlay:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lorg/telegram/ui/ContactAddActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lorg/telegram/ui/ContactAddActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v1, [F

    aput v4, v6, v2

    invoke-static {v3, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v6, p0, Lorg/telegram/ui/ContactAddActivity;->avatarOverlay:Landroid/view/View;

    new-array v7, v1, [F

    aput v4, v7, v2

    invoke-static {v6, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v3, v0, v2

    aput-object v4, v0, v1

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/ContactAddActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v1, [F

    aput v3, v6, v2

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v6, p0, Lorg/telegram/ui/ContactAddActivity;->avatarOverlay:Landroid/view/View;

    new-array v7, v1, [F

    aput v3, v7, v2

    invoke-static {v6, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v4, v0, v2

    aput-object v3, v0, v1

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/ContactAddActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0xb4

    invoke-virtual {p2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p2, p0, Lorg/telegram/ui/ContactAddActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/ContactAddActivity$7;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ContactAddActivity$7;-><init>(Lorg/telegram/ui/ContactAddActivity;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lorg/telegram/ui/ContactAddActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/ContactAddActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/ContactAddActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/ContactAddActivity;->avatarOverlay:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/ContactAddActivity;->avatarOverlay:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ContactAddActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/ContactAddActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/ContactAddActivity;->avatarOverlay:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/ContactAddActivity;->avatarOverlay:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private updateAvatarLayout()V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/ui/ContactAddActivity;->nameTextView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/ContactAddActivity;->user_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/ContactAddActivity;->getPhone()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/ContactAddActivity;->nameTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->MobileHidden:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ContactAddActivity;->infoTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ContactAddActivity;->infoTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->MobileHiddenExceptionInfo:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    const-string v4, "%1$s"

    invoke-static {v4, v3, v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/ContactAddActivity;->nameTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/telegram/ui/ContactAddActivity;->getPhone()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v2, p0, Lorg/telegram/ui/ContactAddActivity;->needAddException:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/ContactAddActivity;->infoTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->MobileVisibleInfo:I

    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v0

    const-string v0, "MobileVisibleInfo"

    invoke-static {v0, v3, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ContactAddActivity;->onlineTextView:Landroid/widget/TextView;

    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->formatUserStatus(ILorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/ContactAddActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ContactAddActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v2, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$User;)V

    iput-object v2, p0, Lorg/telegram/ui/ContactAddActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    :cond_4
    return-void
.end method

.method private updateCustomPhotoInfo()V
    .locals 7

    iget-boolean v0, p0, Lorg/telegram/ui/ContactAddActivity;->addContact:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/ContactAddActivity;->user_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentBeginToShow:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ContactAddActivity;->linearLayout:Landroid/widget/LinearLayout;

    invoke-static {v1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    :cond_1
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    const-string v2, "50_50"

    if-eqz v1, :cond_2

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->personal:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ContactAddActivity;->oldPhotoCell:Lorg/telegram/ui/Cells/TextCell;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lorg/telegram/ui/ContactAddActivity;->prevAvatar:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/16 v3, 0x3e8

    invoke-static {v1, v3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/ContactAddActivity;->prevAvatar:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v1, v3}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/ContactAddActivity;->oldAvatarView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v4, p0, Lorg/telegram/ui/ContactAddActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v2, v4, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ContactAddActivity;->oldPhotoCell:Lorg/telegram/ui/Cells/TextCell;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ContactAddActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    if-nez v1, :cond_4

    new-instance v1, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$User;)V

    iput-object v1, p0, Lorg/telegram/ui/ContactAddActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/ContactAddActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-nez v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/ContactAddActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v2, p0, Lorg/telegram/ui/ContactAddActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ContactAddActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {v1}, Lorg/telegram/messenger/ImageLocation;->getForLocal(Lorg/telegram/tgnet/TLRPC$FileLocation;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/ContactAddActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v5, p0, Lorg/telegram/ui/ContactAddActivity;->user_id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public canFinishFragment()Z
    .locals 2

    iget v0, p0, Lorg/telegram/ui/ContactAddActivity;->photoSelectedTypeFinal:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_actionBarSelectorBlue:I

    iget-object v4, v0, Lorg/telegram/ui/ContactAddActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    iget-object v5, v0, Lorg/telegram/ui/ContactAddActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    iget-boolean v2, v0, Lorg/telegram/ui/ContactAddActivity;->addContact:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/messenger/R$string;->NewContact:I

    :goto_0
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/messenger/R$string;->EditContact:I

    goto :goto_0

    :goto_1
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v5, Lorg/telegram/ui/ContactAddActivity$1;

    invoke-direct {v5, v0}, Lorg/telegram/ui/ContactAddActivity$1;-><init>(Lorg/telegram/ui/ContactAddActivity;)V

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v2

    sget v5, Lorg/telegram/messenger/R$string;->Done:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(ILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/ContactAddActivity;->doneButton:Landroid/view/View;

    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/ContactAddActivity;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    check-cast v2, Landroid/widget/ScrollView;

    iget-object v5, v0, Lorg/telegram/ui/ContactAddActivity;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v6, -0x2

    const/16 v7, 0x33

    const/4 v8, -0x1

    invoke-static {v8, v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createScroll(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lorg/telegram/ui/ContactAddActivity;->linearLayout:Landroid/widget/LinearLayout;

    new-instance v5, Lorg/telegram/ui/ContactAddActivity$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Lorg/telegram/ui/ContactAddActivity$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iget-object v5, v0, Lorg/telegram/ui/ContactAddActivity;->linearLayout:Landroid/widget/LinearLayout;

    const/high16 v13, 0x41c00000    # 24.0f

    const/4 v14, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x2

    const/high16 v11, 0x41c00000    # 24.0f

    const/high16 v12, 0x41c00000    # 24.0f

    invoke-static/range {v9 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/ContactAddActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v6, 0x41f00000    # 30.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    iget-object v5, v0, Lorg/telegram/ui/ContactAddActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v10, 0x5

    if-eqz v7, :cond_1

    const/4 v7, 0x5

    goto :goto_2

    :cond_1
    const/4 v7, 0x3

    :goto_2
    or-int/lit8 v7, v7, 0x30

    const/16 v11, 0x3c

    invoke-static {v11, v11, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v3}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v7, 0x55000000

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v7, Lorg/telegram/ui/ContactAddActivity$2;

    invoke-direct {v7, v0, v1, v5}, Lorg/telegram/ui/ContactAddActivity$2;-><init>(Lorg/telegram/ui/ContactAddActivity;Landroid/content/Context;Landroid/graphics/Paint;)V

    iput-object v7, v0, Lorg/telegram/ui/ContactAddActivity;->avatarOverlay:Landroid/view/View;

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_2

    const/4 v5, 0x5

    goto :goto_3

    :cond_2
    const/4 v5, 0x3

    :goto_3
    or-int/lit8 v5, v5, 0x30

    invoke-static {v11, v11, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/ContactAddActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/RadialProgressView;->setSize(I)V

    iget-object v5, v0, Lorg/telegram/ui/ContactAddActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v5, v8}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    iget-object v5, v0, Lorg/telegram/ui/ContactAddActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/RadialProgressView;->setNoProgress(Z)V

    iget-object v5, v0, Lorg/telegram/ui/ContactAddActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_3

    const/4 v6, 0x5

    goto :goto_4

    :cond_3
    const/4 v6, 0x3

    :goto_4
    or-int/lit8 v6, v6, 0x30

    invoke-static {v11, v11, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {v0, v4, v4}, Lorg/telegram/ui/ContactAddActivity;->showAvatarProgress(ZZ)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/ContactAddActivity;->nameTextView:Landroid/widget/TextView;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v7, v0, Lorg/telegram/ui/ContactAddActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, v0, Lorg/telegram/ui/ContactAddActivity;->nameTextView:Landroid/widget/TextView;

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-virtual {v5, v3, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v5, v0, Lorg/telegram/ui/ContactAddActivity;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLines(I)V

    iget-object v5, v0, Lorg/telegram/ui/ContactAddActivity;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v5, v0, Lorg/telegram/ui/ContactAddActivity;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v5, v0, Lorg/telegram/ui/ContactAddActivity;->nameTextView:Landroid/widget/TextView;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v5, v0, Lorg/telegram/ui/ContactAddActivity;->nameTextView:Landroid/widget/TextView;

    sget-boolean v11, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v11, :cond_4

    const/4 v11, 0x5

    goto :goto_5

    :cond_4
    const/4 v11, 0x3

    :goto_5
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v5, v0, Lorg/telegram/ui/ContactAddActivity;->nameTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v5, v0, Lorg/telegram/ui/ContactAddActivity;->nameTextView:Landroid/widget/TextView;

    sget-boolean v11, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v11, :cond_5

    const/4 v12, 0x5

    goto :goto_6

    :cond_5
    const/4 v12, 0x3

    :goto_6
    or-int/lit8 v15, v12, 0x30

    const/high16 v12, 0x42a00000    # 80.0f

    const/16 v20, 0x0

    if-eqz v11, :cond_6

    const/16 v16, 0x0

    goto :goto_7

    :cond_6
    const/high16 v16, 0x42a00000    # 80.0f

    :goto_7
    if-eqz v11, :cond_7

    const/high16 v18, 0x42a00000    # 80.0f

    goto :goto_8

    :cond_7
    const/16 v18, 0x0

    :goto_8
    const/16 v19, 0x0

    const/4 v13, -0x2

    const/high16 v14, -0x40000000    # -2.0f

    const/high16 v17, 0x40400000    # 3.0f

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v2, v5, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/ContactAddActivity;->onlineTextView:Landroid/widget/TextView;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    iget-object v13, v0, Lorg/telegram/ui/ContactAddActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v11, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v11

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, v0, Lorg/telegram/ui/ContactAddActivity;->onlineTextView:Landroid/widget/TextView;

    const/high16 v11, 0x41600000    # 14.0f

    invoke-virtual {v5, v3, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v5, v0, Lorg/telegram/ui/ContactAddActivity;->onlineTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLines(I)V

    iget-object v5, v0, Lorg/telegram/ui/ContactAddActivity;->onlineTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v5, v0, Lorg/telegram/ui/ContactAddActivity;->onlineTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v5, v0, Lorg/telegram/ui/ContactAddActivity;->onlineTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v5, v0, Lorg/telegram/ui/ContactAddActivity;->onlineTextView:Landroid/widget/TextView;

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_8

    const/4 v8, 0x5

    goto :goto_9

    :cond_8
    const/4 v8, 0x3

    :goto_9
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v5, v0, Lorg/telegram/ui/ContactAddActivity;->onlineTextView:Landroid/widget/TextView;

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_9

    const/4 v13, 0x5

    goto :goto_a

    :cond_9
    const/4 v13, 0x3

    :goto_a
    or-int/lit8 v23, v13, 0x30

    if-eqz v8, :cond_a

    const/16 v24, 0x0

    goto :goto_b

    :cond_a
    const/high16 v24, 0x42a00000    # 80.0f

    :goto_b
    if-eqz v8, :cond_b

    const/high16 v26, 0x42a00000    # 80.0f

    goto :goto_c

    :cond_b
    const/16 v26, 0x0

    :goto_c
    const/16 v27, 0x0

    const/16 v21, -0x2

    const/high16 v22, -0x40000000    # -2.0f

    const/high16 v25, 0x42000000    # 32.0f

    invoke-static/range {v21 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lorg/telegram/ui/ContactAddActivity$3;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/ContactAddActivity$3;-><init>(Lorg/telegram/ui/ContactAddActivity;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/ContactAddActivity;->firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v5, 0x41900000    # 18.0f

    invoke-virtual {v2, v3, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    iget-object v2, v0, Lorg/telegram/ui/ContactAddActivity;->firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    iget-object v12, v0, Lorg/telegram/ui/ContactAddActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v8, v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v12

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setHintTextColor(I)V

    iget-object v2, v0, Lorg/telegram/ui/ContactAddActivity;->firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget-object v12, v0, Lorg/telegram/ui/ContactAddActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v12

    invoke-virtual {v2, v12}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    iget-object v2, v0, Lorg/telegram/ui/ContactAddActivity;->firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v0, Lorg/telegram/ui/ContactAddActivity;->firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputField:I

    invoke-virtual {v0, v13}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v14

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputFieldActivated:I

    invoke-virtual {v0, v15}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v9

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v11

    invoke-virtual {v2, v14, v9, v11}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setLineColors(III)V

    iget-object v2, v0, Lorg/telegram/ui/ContactAddActivity;->firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v2, v0, Lorg/telegram/ui/ContactAddActivity;->firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLines(I)V

    iget-object v2, v0, Lorg/telegram/ui/ContactAddActivity;->firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v2, v0, Lorg/telegram/ui/ContactAddActivity;->firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_c

    const/4 v9, 0x5

    goto :goto_d

    :cond_c
    const/4 v9, 0x3

    :goto_d
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, v0, Lorg/telegram/ui/ContactAddActivity;->firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const v9, 0xc000

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v2, v0, Lorg/telegram/ui/ContactAddActivity;->firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setImeOptions(I)V

    iget-object v2, v0, Lorg/telegram/ui/ContactAddActivity;->firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v11, Lorg/telegram/messenger/R$string;->FirstName:I

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lorg/telegram/ui/ContactAddActivity;->firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget-object v11, v0, Lorg/telegram/ui/ContactAddActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v11

    invoke-virtual {v2, v11}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    iget-object v2, v0, Lorg/telegram/ui/ContactAddActivity;->firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-virtual {v2, v11}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    iget-object v2, v0, Lorg/telegram/ui/ContactAddActivity;->firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v11, 0x3fc00000    # 1.5f

    invoke-virtual {v2, v11}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    iget-object v2, v0, Lorg/telegram/ui/ContactAddActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v14, v0, Lorg/telegram/ui/ContactAddActivity;->firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v23, 0x41c00000    # 24.0f

    const/16 v24, 0x0

    const/16 v19, -0x1

    const/16 v20, 0x24

    const/high16 v21, 0x41c00000    # 24.0f

    const/high16 v22, 0x41c00000    # 24.0f

    invoke-static/range {v19 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v2, v14, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lorg/telegram/ui/ContactAddActivity;->firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v10, Lorg/telegram/ui/ContactAddActivity$$ExternalSyntheticLambda3;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ContactAddActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ContactAddActivity;)V

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v2, v0, Lorg/telegram/ui/ContactAddActivity;->firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v10, Lorg/telegram/ui/ContactAddActivity$4;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ContactAddActivity$4;-><init>(Lorg/telegram/ui/ContactAddActivity;)V

    invoke-virtual {v2, v10}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v2, v0, Lorg/telegram/ui/ContactAddActivity;->firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget-object v10, v0, Lorg/telegram/ui/ContactAddActivity;->firstNameFromCard:Ljava/lang/String;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lorg/telegram/ui/ContactAddActivity$5;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/ContactAddActivity$5;-><init>(Lorg/telegram/ui/ContactAddActivity;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/ContactAddActivity;->lastNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v2, v3, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    iget-object v2, v0, Lorg/telegram/ui/ContactAddActivity;->lastNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget-object v5, v0, Lorg/telegram/ui/ContactAddActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v8, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setHintTextColor(I)V

    iget-object v2, v0, Lorg/telegram/ui/ContactAddActivity;->lastNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget-object v5, v0, Lorg/telegram/ui/ContactAddActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    iget-object v2, v0, Lorg/telegram/ui/ContactAddActivity;->lastNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v2, v12}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v0, Lorg/telegram/ui/ContactAddActivity;->lastNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v13}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v0, v15}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v2, v5, v8, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setLineColors(III)V

    iget-object v2, v0, Lorg/telegram/ui/ContactAddActivity;->lastNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v2, v0, Lorg/telegram/ui/ContactAddActivity;->lastNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLines(I)V

    iget-object v2, v0, Lorg/telegram/ui/ContactAddActivity;->lastNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v2, v0, Lorg/telegram/ui/ContactAddActivity;->lastNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_d

    const/4 v4, 0x5

    goto :goto_e

    :cond_d
    const/4 v4, 0x3

    :goto_e
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, v0, Lorg/telegram/ui/ContactAddActivity;->lastNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v2, v0, Lorg/telegram/ui/ContactAddActivity;->lastNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setImeOptions(I)V

    iget-object v2, v0, Lorg/telegram/ui/ContactAddActivity;->lastNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v4, Lorg/telegram/messenger/R$string;->LastName:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lorg/telegram/ui/ContactAddActivity;->lastNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget-object v4, v0, Lorg/telegram/ui/ContactAddActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    iget-object v2, v0, Lorg/telegram/ui/ContactAddActivity;->lastNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    iget-object v2, v0, Lorg/telegram/ui/ContactAddActivity;->lastNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v2, v11}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    iget-object v2, v0, Lorg/telegram/ui/ContactAddActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v4, v0, Lorg/telegram/ui/ContactAddActivity;->lastNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v9, 0x41c00000    # 24.0f

    const/4 v10, 0x0

    const/4 v5, -0x1

    const/16 v6, 0x24

    const/high16 v7, 0x41c00000    # 24.0f

    const/high16 v8, 0x41800000    # 16.0f

    invoke-static/range {v5 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lorg/telegram/ui/ContactAddActivity;->lastNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v4, Lorg/telegram/ui/ContactAddActivity$$ExternalSyntheticLambda4;

    invoke-direct {v4, v0}, Lorg/telegram/ui/ContactAddActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ContactAddActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v2, v0, Lorg/telegram/ui/ContactAddActivity;->lastNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget-object v4, v0, Lorg/telegram/ui/ContactAddActivity;->lastNameFromCard:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v4, v0, Lorg/telegram/ui/ContactAddActivity;->user_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_f

    iget-object v4, v0, Lorg/telegram/ui/ContactAddActivity;->firstNameFromCard:Ljava/lang/String;

    if-nez v4, :cond_f

    iget-object v4, v0, Lorg/telegram/ui/ContactAddActivity;->lastNameFromCard:Ljava/lang/String;

    if-nez v4, :cond_f

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-nez v4, :cond_e

    iget-object v4, v0, Lorg/telegram/ui/ContactAddActivity;->phone:Ljava/lang/String;

    if-eqz v4, :cond_e

    invoke-static {v4}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    :cond_e
    iget-object v4, v0, Lorg/telegram/ui/ContactAddActivity;->firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lorg/telegram/ui/ContactAddActivity;->firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    iget-object v4, v0, Lorg/telegram/ui/ContactAddActivity;->lastNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_f
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/ContactAddActivity;->infoTextView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, v0, Lorg/telegram/ui/ContactAddActivity;->infoTextView:Landroid/widget/TextView;

    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v4, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v4, v0, Lorg/telegram/ui/ContactAddActivity;->infoTextView:Landroid/widget/TextView;

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_10

    const/4 v9, 0x5

    goto :goto_f

    :cond_10
    const/4 v9, 0x3

    :goto_f
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setGravity(I)V

    iget-boolean v4, v0, Lorg/telegram/ui/ContactAddActivity;->addContact:Z

    const-string v5, ""

    if-eqz v4, :cond_13

    iget-boolean v1, v0, Lorg/telegram/ui/ContactAddActivity;->needAddException:Z

    if-eqz v1, :cond_11

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ContactAddActivity;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_11
    iget-object v1, v0, Lorg/telegram/ui/ContactAddActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v4, v0, Lorg/telegram/ui/ContactAddActivity;->infoTextView:Landroid/widget/TextView;

    const/high16 v10, 0x41c00000    # 24.0f

    const/4 v11, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x2

    const/high16 v8, 0x41c00000    # 24.0f

    const/high16 v9, 0x41900000    # 18.0f

    invoke-static/range {v6 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_12
    iget-boolean v1, v0, Lorg/telegram/ui/ContactAddActivity;->needAddException:Z

    if-eqz v1, :cond_16

    new-instance v1, Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct {v1, v4, v6}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;I)V

    iput-object v1, v0, Lorg/telegram/ui/ContactAddActivity;->checkBoxCell:Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ContactAddActivity;->infoTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    invoke-static {v1, v2, v6}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ContactAddActivity;->checkBoxCell:Lorg/telegram/ui/Cells/CheckBoxCell;

    sget v4, Lorg/telegram/messenger/R$string;->SharePhoneNumberWith:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const-string v7, "%1$s"

    invoke-static {v7, v4, v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v2, v1, v5, v3, v6}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)V

    iget-object v1, v0, Lorg/telegram/ui/ContactAddActivity;->checkBoxCell:Lorg/telegram/ui/Cells/CheckBoxCell;

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v3, v6, v2, v6}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, v0, Lorg/telegram/ui/ContactAddActivity;->checkBoxCell:Lorg/telegram/ui/Cells/CheckBoxCell;

    new-instance v2, Lorg/telegram/ui/ContactAddActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ContactAddActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ContactAddActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lorg/telegram/ui/ContactAddActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lorg/telegram/ui/ContactAddActivity;->checkBoxCell:Lorg/telegram/ui/Cells/CheckBoxCell;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/4 v5, 0x0

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static/range {v3 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_10

    :cond_13
    new-instance v4, Lorg/telegram/ui/Cells/TextCell;

    iget-object v6, v0, Lorg/telegram/ui/ContactAddActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v4, v1, v6}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v6, Lorg/telegram/messenger/R$string;->SuggestUserPhoto:I

    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    new-array v8, v3, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    const-string v7, "SuggestUserPhoto"

    invoke-static {v7, v6, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/R$drawable;->msg_addphoto:I

    invoke-virtual {v4, v6, v7, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueButton:I

    invoke-virtual {v4, v6, v8}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    new-instance v15, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v10, Lorg/telegram/messenger/R$raw;->photo_suggest_icon:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/high16 v16, 0x42480000    # 50.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    const/4 v14, 0x0

    const/16 v18, 0x0

    move-object v9, v15

    move-object v3, v15

    move-object/from16 v15, v18

    invoke-direct/range {v9 .. v15}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    iget-object v9, v4, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 v10, 0x41000000    # 8.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    neg-int v11, v11

    int-to-float v11, v11

    invoke-virtual {v9, v11}, Landroid/view/View;->setTranslationX(F)V

    iget-object v9, v4, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v9, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    new-instance v9, Lorg/telegram/ui/ContactAddActivity$$ExternalSyntheticLambda6;

    invoke-direct {v9, v0, v2, v3, v4}, Lorg/telegram/ui/ContactAddActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ContactAddActivity;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/Components/RLottieDrawable;Lorg/telegram/ui/Cells/TextCell;)V

    invoke-virtual {v4, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v0, Lorg/telegram/ui/ContactAddActivity;->linearLayout:Landroid/widget/LinearLayout;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v20, -0x1

    const/16 v21, -0x2

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x12

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v3, v4, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lorg/telegram/ui/Cells/TextCell;

    iget-object v4, v0, Lorg/telegram/ui/ContactAddActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v3, v1, v4}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v4, Lorg/telegram/messenger/R$string;->UserSetPhoto:I

    iget-object v9, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v9, v11, v12

    const-string v9, "UserSetPhoto"

    invoke-static {v9, v4, v11}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v7, v12}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v6, v8}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    new-instance v4, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v7, Lorg/telegram/messenger/R$raw;->camera_outline:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v21

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v22

    const/16 v24, 0x0

    move-object/from16 v18, v4

    move/from16 v19, v7

    invoke-direct/range {v18 .. v24}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    iget-object v5, v3, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setTranslationX(F)V

    iget-object v5, v3, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    new-instance v5, Lorg/telegram/ui/ContactAddActivity$$ExternalSyntheticLambda7;

    invoke-direct {v5, v0, v2, v4, v3}, Lorg/telegram/ui/ContactAddActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ContactAddActivity;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/Components/RLottieDrawable;Lorg/telegram/ui/Cells/TextCell;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, v0, Lorg/telegram/ui/ContactAddActivity;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v15, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/ContactAddActivity;->oldAvatarView:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v3, Lorg/telegram/ui/ContactAddActivity$6;

    iget-object v4, v0, Lorg/telegram/ui/ContactAddActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v3, v0, v1, v4}, Lorg/telegram/ui/ContactAddActivity$6;-><init>(Lorg/telegram/ui/ContactAddActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, v0, Lorg/telegram/ui/ContactAddActivity;->oldPhotoCell:Lorg/telegram/ui/Cells/TextCell;

    iget-object v3, v0, Lorg/telegram/ui/ContactAddActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    if-nez v3, :cond_14

    new-instance v3, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v3, v2}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$User;)V

    iput-object v3, v0, Lorg/telegram/ui/ContactAddActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    :cond_14
    iget-object v3, v0, Lorg/telegram/ui/ContactAddActivity;->oldAvatarView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v5, v0, Lorg/telegram/ui/ContactAddActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    iget-object v3, v0, Lorg/telegram/ui/ContactAddActivity;->oldPhotoCell:Lorg/telegram/ui/Cells/TextCell;

    iget-object v4, v0, Lorg/telegram/ui/ContactAddActivity;->oldAvatarView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v14, 0x41a80000    # 21.0f

    const/4 v15, 0x0

    const/16 v9, 0x1e

    const/high16 v10, 0x41f00000    # 30.0f

    const/16 v11, 0x10

    const/high16 v12, 0x41a80000    # 21.0f

    const/4 v13, 0x0

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v0, Lorg/telegram/ui/ContactAddActivity;->oldPhotoCell:Lorg/telegram/ui/Cells/TextCell;

    sget v4, Lorg/telegram/messenger/R$string;->ResetToOriginalPhoto:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v3, v0, Lorg/telegram/ui/ContactAddActivity;->oldPhotoCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/TextCell;->getImageView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Lorg/telegram/ui/ContactAddActivity;->oldPhotoCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v0, Lorg/telegram/ui/ContactAddActivity;->oldPhotoCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v3, v6, v8}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    iget-object v3, v0, Lorg/telegram/ui/ContactAddActivity;->oldPhotoCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v4, Lorg/telegram/ui/ContactAddActivity$$ExternalSyntheticLambda8;

    invoke-direct {v4, v0, v1, v2}, Lorg/telegram/ui/ContactAddActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/ContactAddActivity;Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lorg/telegram/ui/ContactAddActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lorg/telegram/ui/ContactAddActivity;->oldPhotoCell:Lorg/telegram/ui/Cells/TextCell;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, v0, Lorg/telegram/ui/ContactAddActivity;->user_id:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v1

    if-eqz v1, :cond_15

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$UserFull;->profile_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iput-object v2, v0, Lorg/telegram/ui/ContactAddActivity;->prevAvatar:Lorg/telegram/tgnet/TLRPC$Photo;

    if-nez v2, :cond_15

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$UserFull;->fallback_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iput-object v1, v0, Lorg/telegram/ui/ContactAddActivity;->prevAvatar:Lorg/telegram/tgnet/TLRPC$Photo;

    :cond_15
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ContactAddActivity;->updateCustomPhotoInfo()V

    :cond_16
    :goto_10
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_1

    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget p2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_AVATAR:I

    and-int/2addr p2, p1

    if-nez p2, :cond_0

    sget p2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_STATUS:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_4

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ContactAddActivity;->updateAvatarLayout()V

    goto :goto_1

    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->dialogPhotosUpdate:I

    if-ne p1, p2, :cond_4

    aget-object p1, p3, v0

    check-cast p1, Lorg/telegram/messenger/MessagesController$DialogPhotos;

    iget-object p2, p0, Lorg/telegram/ui/ContactAddActivity;->dialogPhotos:Lorg/telegram/messenger/MessagesController$DialogPhotos;

    if-ne p1, p2, :cond_4

    new-instance p2, Ljava/util/ArrayList;

    iget-object p1, p1, Lorg/telegram/messenger/MessagesController$DialogPhotos;->photos:Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p1, p3, :cond_3

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Photo;

    iput-object p1, p0, Lorg/telegram/ui/ContactAddActivity;->prevAvatar:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-direct {p0}, Lorg/telegram/ui/ContactAddActivity;->updateCustomPhotoInfo()V

    :cond_4
    :goto_1
    return-void
.end method

.method public didStartUpload(ZZ)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/ContactAddActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget p2, p0, Lorg/telegram/ui/ContactAddActivity;->photoSelectedType:I

    iput p2, p0, Lorg/telegram/ui/ContactAddActivity;->photoSelectedTypeFinal:I

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RadialProgressView;->setProgress(F)V

    return-void
.end method

.method public didUploadFailed()V
    .locals 1

    new-instance v0, Lorg/telegram/ui/ContactAddActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ContactAddActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ContactAddActivity;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public didUploadPhoto(Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;ZLorg/telegram/tgnet/TLRPC$VideoSize;)V
    .locals 11

    new-instance v10, Lorg/telegram/ui/ContactAddActivity$$ExternalSyntheticLambda9;

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v2, p7

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p6

    move-object/from16 v6, p9

    move-wide v7, p3

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/ContactAddActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/ContactAddActivity;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$VideoSize;DZ)V

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic getCloseIntoObject()Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate$-CC;->$default$getCloseIntoObject(Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    move-result-object v0

    return-object v0
.end method

.method public getInitialSearchString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate$-CC;->$default$getInitialSearchString(Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ContactAddActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 29

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lorg/telegram/ui/ContactAddActivity$$ExternalSyntheticLambda0;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ContactAddActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ContactAddActivity;)V

    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v12, v2

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    const/4 v14, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    const/16 v22, 0x0

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ContactAddActivity;->nameTextView:Landroid/widget/TextView;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    move-object v11, v2

    move/from16 v18, v3

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ContactAddActivity;->onlineTextView:Landroid/widget/TextView;

    sget v20, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v25, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    const/16 v21, 0x0

    move-object/from16 v18, v2

    move-object/from16 v19, v4

    invoke-direct/range {v18 .. v25}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ContactAddActivity;->firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v18, 0x0

    move-object v14, v2

    move/from16 v21, v3

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ContactAddActivity;->firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v25, 0x0

    move-object/from16 v21, v2

    move-object/from16 v22, v4

    move/from16 v28, v5

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ContactAddActivity;->firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputField:I

    const/16 v16, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v11, v2

    move/from16 v18, v4

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v6, v0, Lorg/telegram/ui/ContactAddActivity;->firstNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v20, v7, v8

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputFieldActivated:I

    const/16 v23, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v18, v2

    move-object/from16 v19, v6

    move/from16 v25, v7

    invoke-direct/range {v18 .. v25}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ContactAddActivity;->lastNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v18, 0x0

    move-object v14, v2

    move/from16 v21, v3

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ContactAddActivity;->lastNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const/16 v16, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v11, v2

    move/from16 v18, v5

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ContactAddActivity;->lastNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/16 v18, 0x0

    move-object v14, v2

    move/from16 v21, v4

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ContactAddActivity;->lastNameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v13, v3, v4

    const/16 v16, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v11, v2

    move/from16 v18, v7

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ContactAddActivity;->infoTextView:Landroid/widget/TextView;

    sget v20, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v25, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    const/16 v21, 0x0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    invoke-direct/range {v18 .. v25}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_text:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, v11

    move-object v8, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundRed:I

    const/4 v7, 0x0

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundOrange:I

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundViolet:I

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundGreen:I

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundCyan:I

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundBlue:I

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundPink:I

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public onFragmentCreate()Z
    .locals 7

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogPhotosUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "user_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/ContactAddActivity;->user_id:J

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ContactAddActivity;->phone:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "first_name_card"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ContactAddActivity;->firstNameFromCard:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "last_name_card"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ContactAddActivity;->lastNameFromCard:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "addContact"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactAddActivity;->addContact:Z

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dialog_bar_exception"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lorg/telegram/ui/ContactAddActivity;->user_id:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ContactAddActivity;->needAddException:Z

    iget-wide v0, p0, Lorg/telegram/ui/ContactAddActivity;->user_id:J

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/ContactAddActivity;->user_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ContactAddActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    if-eqz v1, :cond_1

    iput-object p0, v1, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1, p0}, Lorg/telegram/ui/Components/ImageUpdater;->setDelegate(Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;)V

    :cond_1
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/ContactAddActivity;->user_id:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getDialogPhotos(J)Lorg/telegram/messenger/MessagesController$DialogPhotos;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/ContactAddActivity;->dialogPhotos:Lorg/telegram/messenger/MessagesController$DialogPhotos;

    if-eqz v0, :cond_2

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v4, 0x1

    :cond_2
    return v4
.end method

.method public onFragmentDestroy()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogPhotosUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v0, p0, Lorg/telegram/ui/ContactAddActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ImageUpdater;->clear()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ContactAddActivity;->paused:Z

    iget-object v0, p0, Lorg/telegram/ui/ContactAddActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ImageUpdater;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    invoke-direct {p0}, Lorg/telegram/ui/ContactAddActivity;->updateAvatarLayout()V

    iget-object v0, p0, Lorg/telegram/ui/ContactAddActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ImageUpdater;->onResume()V

    return-void
.end method

.method public onUploadProgressChanged(F)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ContactAddActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RadialProgressView;->setProgress(F)V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/ContactAddActivity$ContactAddActivityDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ContactAddActivity;->delegate:Lorg/telegram/ui/ContactAddActivity$ContactAddActivityDelegate;

    return-void
.end method

.method public synthetic supportsBulletin()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate$-CC;->$default$supportsBulletin(Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;)Z

    move-result v0

    return v0
.end method
