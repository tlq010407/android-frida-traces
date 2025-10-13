.class Lorg/telegram/ui/PeerColorActivity$Page$7;
.super Lorg/telegram/ui/SelectAnimatedEmojiDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PeerColorActivity$Page;->showSelectStatusDialog(Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PeerColorActivity$Page;

.field final synthetic val$cell:Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;

.field final synthetic val$popup:[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PeerColorActivity$Page;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;IILorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;)V
    .locals 11

    move-object v10, p0

    move-object v0, p1

    iput-object v0, v10, Lorg/telegram/ui/PeerColorActivity$Page$7;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    move-object/from16 v0, p11

    iput-object v0, v10, Lorg/telegram/ui/PeerColorActivity$Page$7;->val$cell:Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;

    move-object/from16 v0, p12

    iput-object v0, v10, Lorg/telegram/ui/PeerColorActivity$Page$7;->val$popup:[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;II)V

    return-void
.end method


# virtual methods
.method protected getScrimDrawableTranslationY()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onEmojiSelected(Landroid/view/View;Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Integer;)V
    .locals 0

    const/4 p1, 0x0

    if-eqz p4, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$7;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p4}, Lorg/telegram/messenger/MessagesController;->emojiStatusCollectibleFromGift(Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;)Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    move-result-object p3

    invoke-static {p2, p3}, Lorg/telegram/ui/PeerColorActivity$Page;->access$1502(Lorg/telegram/ui/PeerColorActivity$Page;Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;)Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$7;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    const/4 p3, -0x1

    invoke-static {p2, p3}, Lorg/telegram/ui/PeerColorActivity$Page;->access$1202(Lorg/telegram/ui/PeerColorActivity$Page;I)I

    goto :goto_1

    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/PeerColorActivity$Page$7;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    if-nez p2, :cond_1

    const-wide/16 p4, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p4

    :goto_0
    invoke-static {p3, p4, p5}, Lorg/telegram/ui/PeerColorActivity$Page;->access$2102(Lorg/telegram/ui/PeerColorActivity$Page;J)J

    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$7;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p2, p1}, Lorg/telegram/ui/PeerColorActivity$Page;->access$1502(Lorg/telegram/ui/PeerColorActivity$Page;Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;)Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$7;->val$cell:Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;

    const/4 p3, 0x1

    if-eqz p2, :cond_2

    invoke-virtual {p2, p3}, Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;->update(Z)V

    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$7;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-virtual {p2, p3}, Lorg/telegram/ui/PeerColorActivity$Page;->updateProfilePreview(Z)V

    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$7;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p2}, Lorg/telegram/ui/PeerColorActivity$Page;->access$1600(Lorg/telegram/ui/PeerColorActivity$Page;)V

    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$7;->val$popup:[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    const/4 p3, 0x0

    aget-object p2, p2, p3

    if-eqz p2, :cond_3

    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page$7;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p2, p1}, Lorg/telegram/ui/PeerColorActivity$Page;->access$2902(Lorg/telegram/ui/PeerColorActivity$Page;Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$7;->val$popup:[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    aget-object p1, p1, p3

    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->dismiss()V

    :cond_3
    return-void
.end method
