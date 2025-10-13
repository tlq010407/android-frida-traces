.class Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;


# direct methods
.method public static synthetic $r8$lambda$KcLHoWo6SSNdCI1CZInlqgqqkzs(Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell$1;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell$1;->lambda$afterTextChanged$1(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nfOW-BzuYBsikzi_TanKpdTIpyU(Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell$1;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell$1;->lambda$afterTextChanged$0(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r6CbCvKbAR-SW-JA89Vs65wo_g0(Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell$1;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell$1;->lambda$afterTextChanged$2(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell$1;->this$1:Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$afterTextChanged$0(Lorg/telegram/tgnet/TLObject;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell$1;->this$1:Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;

    iget-object v0, v0, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-static {v0, p1}, Lorg/telegram/ui/GroupStickersActivity;->access$3100(Lorg/telegram/ui/GroupStickersActivity;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell$1;->this$1:Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;

    iget-object p1, p1, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/GroupStickersActivity;->access$3100(Lorg/telegram/ui/GroupStickersActivity;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$afterTextChanged$1(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    iget-object p3, p0, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell$1;->this$1:Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;

    invoke-static {p3}, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;->access$3400(Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell$1$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell$1$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell$1;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$afterTextChanged$2(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell$1;->this$1:Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;

    invoke-static {v0, p1}, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;->access$3402(Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;-><init>()V

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iput-object p1, v1, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->short_name:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell$1;->this$1:Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;

    iget-object v2, v1, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell$1$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell$1;Ljava/lang/String;)V

    const/16 p1, 0x42

    invoke-virtual {v2, v0, v3, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result p1

    invoke-static {v1, p1}, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;->access$3202(Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;I)I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell$1;->this$1:Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;->access$3200(Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell$1;->this$1:Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;

    iget-object v0, v0, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell$1;->this$1:Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;

    invoke-static {v1}, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;->access$3200(Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell$1;->this$1:Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;->access$3202(Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;I)I

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell$1;->this$1:Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;->access$3300(Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell$1;->this$1:Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;->access$3300(Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell$1;->this$1:Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;->access$3402(Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell$1;->this$1:Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;

    iget-object p1, p1, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/GroupStickersActivity;->access$3100(Lorg/telegram/ui/GroupStickersActivity;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    return-void

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell$1;->this$1:Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;

    new-instance v1, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell$1;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;->access$3302(Lorg/telegram/ui/GroupStickersActivity$AddEmojiCell;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v0, 0x12c

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
