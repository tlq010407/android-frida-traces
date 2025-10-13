.class public Lorg/telegram/ui/Components/JoinGroupAlert;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "SourceFile"


# instance fields
.field private chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

.field private currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private final fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private final hash:Ljava/lang/String;

.field private requestProgressView:Lorg/telegram/ui/Components/RadialProgressView;

.field private requestTextView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$-BrvctanFLceaFz3wLwDfbW4AUM(Lorg/telegram/ui/Components/JoinGroupAlert;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/JoinGroupAlert;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$2couEsW3RWAjizZzQmFNzpWPd4c(Lorg/telegram/ui/Components/JoinGroupAlert;ILorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/JoinGroupAlert;->lambda$new$9(ILorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3ka2uAndsuQ7BjoBO3qZ3zc4_-w(Lorg/telegram/ui/Components/JoinGroupAlert;ZLandroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/JoinGroupAlert;->lambda$new$2(ZLandroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7kzYmZxXArL0I4DPHVh2z22df-o(Lorg/telegram/ui/Components/JoinGroupAlert;ZLorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/JoinGroupAlert;->lambda$new$6(ZLorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GDwHTOypfmtbI-enMz-nzDsyYyk(Lorg/telegram/ui/Components/JoinGroupAlert;Lorg/telegram/tgnet/TLRPC$TL_error;ZLorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/JoinGroupAlert;->lambda$new$5(Lorg/telegram/tgnet/TLRPC$TL_error;ZLorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PYyfcagUI6PCD62Ohz8DzAk8AM4(Lorg/telegram/ui/Components/JoinGroupAlert;ZLandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/JoinGroupAlert;->lambda$new$7(ZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SQx4TOeNDIolFsjsJjD1YCctr_E(Lorg/telegram/ui/Components/JoinGroupAlert;ZLandroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/JoinGroupAlert;->lambda$new$4(ZLandroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SsLEr3EGSkjYLJpDQrj1JyDjUvA(Lorg/telegram/ui/Components/JoinGroupAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/JoinGroupAlert;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$h-wb40nhsS3HSXAD8YJHeRE0PoA(Lorg/telegram/ui/Components/JoinGroupAlert;ZLorg/telegram/tgnet/TLRPC$TL_error;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/JoinGroupAlert;->lambda$new$3(ZLorg/telegram/tgnet/TLRPC$TL_error;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$loUuT6zJdkt3ak6PRaYmcrd3BAk(Lorg/telegram/ui/Components/JoinGroupAlert;ILandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/JoinGroupAlert;->lambda$new$10(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oycTZlwdlDkmkHSz7RmXQn65fto(Lorg/telegram/ui/Components/JoinGroupAlert;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/JoinGroupAlert;->lambda$new$8(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 7

    .line 0
    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/JoinGroupAlert;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V
    .locals 27

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move/from16 v4, p6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {v0, v1, v8, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyTopPadding(Z)V

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v9

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar(I)V

    move-object/from16 v9, p4

    iput-object v9, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v9, v2, Lorg/telegram/tgnet/TLRPC$ChatInvite;

    if-eqz v9, :cond_1

    check-cast v2, Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iput-object v2, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    :cond_0
    :goto_0
    move-object/from16 v2, p3

    goto :goto_1

    :cond_1
    instance-of v9, v2, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v9, :cond_0

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    iput-object v2, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    goto :goto_0

    :goto_1
    iput-object v2, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->hash:Ljava/lang/String;

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setClickable(Z)V

    new-instance v9, Landroid/widget/FrameLayout;

    invoke-direct {v9, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v10, Landroidx/core/widget/NestedScrollView;

    invoke-direct {v10, v1}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v9}, Landroidx/core/widget/NestedScrollView;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v10}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    new-instance v10, Landroid/widget/ImageView;

    invoke-direct {v10, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v11

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_sheet_other:I

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setColorFilter(I)V

    sget v11, Lorg/telegram/messenger/R$drawable;->ic_layer_close:I

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v11, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda0;

    invoke-direct {v11, v0}, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v11, 0x41000000    # 8.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-virtual {v10, v12, v12, v12, v12}, Landroid/view/View;->setPadding(IIII)V

    const/high16 v18, 0x41000000    # 8.0f

    const/16 v19, 0x0

    const/16 v13, 0x24

    const/high16 v14, 0x42100000    # 36.0f

    const v15, 0x800035

    const/high16 v16, 0x40c00000    # 6.0f

    const/high16 v17, 0x41000000    # 8.0f

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v9, v10, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v9, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    const/high16 v10, 0x42340000    # 45.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v12, 0x5a

    const/16 v13, 0x5a

    const/16 v14, 0x31

    const/4 v15, 0x0

    const/16 v16, 0x1b

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v10, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    const/4 v12, 0x0

    if-eqz v10, :cond_3

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v10, :cond_2

    new-instance v10, Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v12, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-direct {v10, v12}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;)V

    iget-object v12, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v14, v13, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    iget v15, v13, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    invoke-virtual {v9, v13, v10, v12}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;Ljava/lang/Object;)V

    move-object v12, v14

    goto :goto_2

    :cond_2
    new-instance v10, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v10}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iget-object v13, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$ChatInvite;->title:Ljava/lang/String;

    const-wide/16 v14, 0x0

    invoke-virtual {v10, v14, v15, v13, v12}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;)V

    iget-object v12, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$ChatInvite;->title:Ljava/lang/String;

    iget v15, v12, Lorg/telegram/tgnet/TLRPC$ChatInvite;->participants_count:I

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$ChatInvite;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/16 v14, 0x32

    invoke-static {v12, v14}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v12

    iget-object v14, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$ChatInvite;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v12, v14}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v12

    iget-object v14, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    const-string v11, "50_50"

    invoke-virtual {v9, v12, v11, v10, v14}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    move-object v12, v13

    :goto_2
    iget-object v9, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$ChatInvite;->about:Ljava/lang/String;

    iget-boolean v11, v9, Lorg/telegram/tgnet/TLRPC$ChatInvite;->verified:Z

    iget-boolean v13, v9, Lorg/telegram/tgnet/TLRPC$ChatInvite;->fake:Z

    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$ChatInvite;->scam:Z

    goto :goto_4

    :cond_3
    iget-object v10, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v10, :cond_6

    new-instance v10, Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v11, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-direct {v10, v11}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;)V

    iget-object v11, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    iget v13, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v13}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v13

    iget-object v14, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v13, v14, v15}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v13

    if-eqz v13, :cond_4

    iget-object v12, v13, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    :cond_4
    iget-object v14, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    if-eqz v13, :cond_5

    iget v13, v13, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    goto :goto_3

    :cond_5
    const/4 v13, 0x0

    :goto_3
    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v15

    iget-object v13, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v9, v13, v10, v13}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;Ljava/lang/Object;)V

    iget-object v9, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v10, v9, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    iget-boolean v13, v9, Lorg/telegram/tgnet/TLRPC$Chat;->fake:Z

    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$Chat;->scam:Z

    move-object/from16 v26, v11

    move v11, v10

    move-object v10, v12

    move-object/from16 v12, v26

    goto :goto_4

    :cond_6
    move-object v10, v12

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    :goto_4
    new-instance v14, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v14, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v14, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v6, 0x14

    invoke-virtual {v14, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v14, v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    invoke-virtual {v14, v12}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    const/16 v8, 0x11

    invoke-virtual {v14, v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    if-lez v15, :cond_7

    const/16 v24, 0x0

    goto :goto_5

    :cond_7
    const/16 v24, 0x14

    :goto_5
    const/16 v18, -0x2

    const/16 v19, -0x2

    const/16 v20, 0x31

    const/16 v21, 0xa

    const/16 v22, 0xa

    const/16 v23, 0xa

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v2, v14, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-nez v9, :cond_9

    if-eqz v13, :cond_8

    goto :goto_7

    :cond_8
    if-eqz v11, :cond_a

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/JoinGroupAlert;->getVerifiedCrossfadeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    :goto_6
    invoke-virtual {v14, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)Z

    goto :goto_8

    :cond_9
    :goto_7
    xor-int/2addr v9, v7

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/JoinGroupAlert;->getScamDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    goto :goto_6

    :cond_a
    :goto_8
    iget-object v9, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    if-eqz v9, :cond_c

    iget-boolean v11, v9, Lorg/telegram/tgnet/TLRPC$ChatInvite;->channel:Z

    if-eqz v11, :cond_b

    iget-boolean v11, v9, Lorg/telegram/tgnet/TLRPC$ChatInvite;->megagroup:Z

    if-eqz v11, :cond_d

    :cond_b
    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v9}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v9

    if-nez v9, :cond_d

    :cond_c
    iget-object v9, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v9}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v9

    if-eqz v9, :cond_e

    iget-object v9, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v9, :cond_e

    :cond_d
    const/4 v9, 0x1

    goto :goto_9

    :cond_e
    const/4 v9, 0x0

    :goto_9
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    xor-int/2addr v11, v7

    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v13, 0x41500000    # 13.0f

    invoke-virtual {v12, v7, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray3:I

    invoke-virtual {v0, v14}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v13, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v5, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    if-eqz v5, :cond_f

    if-nez v4, :cond_f

    sget v5, Lorg/telegram/messenger/R$string;->ChannelPublic:I

    :goto_a
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    :cond_f
    if-eqz v9, :cond_10

    sget v5, Lorg/telegram/messenger/R$string;->ChannelPrivate:I

    goto :goto_a

    :cond_10
    sget v5, Lorg/telegram/messenger/R$string;->MegaPrivate:I

    goto :goto_a

    :goto_b
    if-eqz v11, :cond_11

    const/16 v25, 0x0

    goto :goto_c

    :cond_11
    const/16 v25, 0x14

    :goto_c
    const/16 v19, -0x2

    const/16 v20, -0x2

    const/16 v21, 0x31

    const/16 v22, 0xa

    const/16 v23, 0x0

    const/16 v24, 0xa

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v12, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v11, :cond_12

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v6, 0x41700000    # 15.0f

    invoke-virtual {v5, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v24, 0x18

    const/16 v25, 0x14

    const/16 v19, -0x1

    const/16 v20, -0x2

    const/16 v21, 0x30

    const/16 v22, 0x18

    const/16 v23, 0xa

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_12
    iget-object v5, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    const/high16 v6, 0x41600000    # 14.0f

    if-eqz v5, :cond_1d

    iget-boolean v10, v5, Lorg/telegram/tgnet/TLRPC$ChatInvite;->request_needed:Z

    if-eqz v10, :cond_13

    goto/16 :goto_11

    :cond_13
    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$ChatInvite;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_18

    iget-object v3, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatInvite;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x3

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    new-instance v5, Lorg/telegram/ui/Components/AvatarsImageView;

    const/4 v9, 0x0

    invoke-direct {v5, v1, v9}, Lorg/telegram/ui/Components/AvatarsImageView;-><init>(Landroid/content/Context;Z)V

    const/high16 v9, 0x41a00000    # 20.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v5, v9}, Lorg/telegram/ui/Components/AvatarsImageView;->setAvatarsTextSize(I)V

    const/16 v9, 0x26

    int-to-float v9, v9

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v5, v10}, Lorg/telegram/ui/Components/AvatarsImageView;->setSize(I)V

    invoke-virtual {v5, v3}, Lorg/telegram/ui/Components/AvatarsImageView;->setCount(I)V

    const v10, 0x3f266666    # 0.65f

    invoke-virtual {v5, v10}, Lorg/telegram/ui/Components/AvatarsImageView;->setStepFactor(F)V

    const/4 v11, 0x0

    :goto_d
    if-ge v11, v3, :cond_14

    sget v12, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iget-object v13, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$ChatInvite;->participants:Ljava/util/ArrayList;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLObject;

    invoke-virtual {v5, v11, v12, v13}, Lorg/telegram/ui/Components/AvatarsImageView;->setObject(IILorg/telegram/tgnet/TLObject;)V

    add-int/2addr v11, v7

    goto :goto_d

    :cond_14
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Lorg/telegram/ui/Components/AvatarsImageView;->commitTransition(Z)V

    add-int/lit8 v11, v3, -0x1

    int-to-float v11, v11

    mul-float v10, v10, v9

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v10, v12

    mul-float v11, v11, v10

    add-float/2addr v9, v11

    float-to-int v9, v9

    const/16 v24, 0x0

    const/16 v25, 0x4

    const/16 v20, 0x2c

    const/16 v21, 0x11

    const/16 v22, 0x0

    const/16 v23, 0x2

    move/from16 v19, v9

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v2, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {v5, v7, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray3:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setGravity(I)V

    if-ne v3, v7, :cond_15

    iget-object v1, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    const/4 v9, 0x0

    invoke-direct {v0, v5, v1, v9}, Lorg/telegram/ui/Components/JoinGroupAlert;->ellipsize(Landroid/widget/TextView;Lorg/telegram/tgnet/TLRPC$ChatInvite;I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_15
    const/4 v1, 0x2

    const/4 v9, 0x0

    if-ne v3, v1, :cond_16

    sget v3, Lorg/telegram/messenger/R$string;->RequestToJoinMembersTwo:I

    iget-object v10, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    invoke-direct {v0, v5, v10, v9}, Lorg/telegram/ui/Components/JoinGroupAlert;->ellipsize(Landroid/widget/TextView;Lorg/telegram/tgnet/TLRPC$ChatInvite;I)Ljava/lang/CharSequence;

    move-result-object v10

    iget-object v11, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    invoke-direct {v0, v5, v11, v7}, Lorg/telegram/ui/Components/JoinGroupAlert;->ellipsize(Landroid/widget/TextView;Lorg/telegram/tgnet/TLRPC$ChatInvite;I)Ljava/lang/CharSequence;

    move-result-object v11

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v10, v1, v9

    aput-object v11, v1, v7

    const-string v10, "RequestToJoinMembersTwo"

    invoke-static {v10, v3, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_16
    const/4 v1, 0x3

    if-ne v15, v1, :cond_17

    sget v3, Lorg/telegram/messenger/R$string;->RequestToJoinMembersThree:I

    iget-object v10, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    invoke-direct {v0, v5, v10, v9}, Lorg/telegram/ui/Components/JoinGroupAlert;->ellipsize(Landroid/widget/TextView;Lorg/telegram/tgnet/TLRPC$ChatInvite;I)Ljava/lang/CharSequence;

    move-result-object v10

    iget-object v11, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    invoke-direct {v0, v5, v11, v7}, Lorg/telegram/ui/Components/JoinGroupAlert;->ellipsize(Landroid/widget/TextView;Lorg/telegram/tgnet/TLRPC$ChatInvite;I)Ljava/lang/CharSequence;

    move-result-object v11

    iget-object v12, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    const/4 v13, 0x2

    invoke-direct {v0, v5, v12, v13}, Lorg/telegram/ui/Components/JoinGroupAlert;->ellipsize(Landroid/widget/TextView;Lorg/telegram/tgnet/TLRPC$ChatInvite;I)Ljava/lang/CharSequence;

    move-result-object v12

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v10, v1, v9

    aput-object v11, v1, v7

    aput-object v12, v1, v13

    const-string v10, "RequestToJoinMembersThree"

    invoke-static {v10, v3, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_17
    const/4 v13, 0x2

    sub-int/2addr v15, v3

    invoke-static {v15, v13}, Ljava/lang/Math;->max(II)I

    move-result v1

    const-string v3, "RequestToJoinMembersAll"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v10, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    invoke-direct {v0, v5, v10, v9}, Lorg/telegram/ui/Components/JoinGroupAlert;->ellipsize(Landroid/widget/TextView;Lorg/telegram/tgnet/TLRPC$ChatInvite;I)Ljava/lang/CharSequence;

    move-result-object v10

    iget-object v11, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    invoke-direct {v0, v5, v11, v7}, Lorg/telegram/ui/Components/JoinGroupAlert;->ellipsize(Landroid/widget/TextView;Lorg/telegram/tgnet/TLRPC$ChatInvite;I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v10, v12, v9

    aput-object v11, v12, v7

    aput-object v1, v12, v13

    invoke-static {v3, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_e
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v15, 0xa

    const/16 v16, 0x18

    const/4 v10, -0x2

    const/4 v11, -0x2

    const/16 v12, 0x31

    const/16 v13, 0xa

    const/4 v14, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_f

    :cond_18
    const/4 v9, 0x0

    :goto_f
    iget-object v1, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$ChatInvite;->channel:Z

    if-eqz v3, :cond_19

    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$ChatInvite;->megagroup:Z

    if-eqz v3, :cond_1a

    :cond_19
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v1, :cond_1b

    :cond_1a
    const/4 v9, 0x1

    :cond_1b
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v5

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButtonPressed:I

    invoke-virtual {v0, v10}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v10

    invoke-static {v3, v5, v10}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    if-eqz v9, :cond_1c

    sget v3, Lorg/telegram/messenger/R$string;->ProfileJoinChannel:I

    goto :goto_10

    :cond_1c
    sget v3, Lorg/telegram/messenger/R$string;->ProfileJoinGroup:I

    :goto_10
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v10, 0xe

    const/16 v11, 0xe

    const/4 v5, -0x1

    const/16 v6, 0x30

    const v7, 0x800003

    const/16 v8, 0xe

    const/4 v9, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, v4}, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_14

    :cond_1d
    :goto_11
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/high16 v5, 0x42000000    # 32.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RadialProgressView;->setSize(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v5, 0x30

    invoke-static {v5, v5, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestTextView:Landroid/widget/TextView;

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButtonPressed:I

    invoke-virtual {v0, v10}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v10

    invoke-static {v5, v3, v10}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v3, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestTextView:Landroid/widget/TextView;

    if-eqz v9, :cond_1e

    sget v4, Lorg/telegram/messenger/R$string;->RequestToJoinChannel:I

    goto :goto_12

    :cond_1e
    sget v4, Lorg/telegram/messenger/R$string;->RequestToJoinGroup:I

    :goto_12
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestTextView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestTextView:Landroid/widget/TextView;

    new-instance v4, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0, v9}, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert;Z)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestTextView:Landroid/widget/TextView;

    const/16 v20, 0xe

    const/16 v21, 0x0

    const/4 v15, -0x1

    const/16 v16, 0x30

    const v17, 0x800003

    const/16 v18, 0xe

    const/16 v19, 0x0

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v1, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    if-eqz v9, :cond_1f

    sget v3, Lorg/telegram/messenger/R$string;->RequestToJoinChannelDescription:I

    goto :goto_13

    :cond_1f
    sget v3, Lorg/telegram/messenger/R$string;->RequestToJoinGroupDescription:I

    :goto_13
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v14}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v9, 0x18

    const/16 v10, 0xf

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/16 v6, 0x30

    const/16 v7, 0x18

    const/16 v8, 0x11

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_14
    return-void
.end method

.method private ellipsize(Landroid/widget/TextView;Lorg/telegram/tgnet/TLRPC$ChatInvite;I)Ljava/lang/CharSequence;
    .locals 1

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->participants:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$User;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    const/high16 p3, 0x42f00000    # 120.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p2, p1, p3, v0}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method private getScamDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_scamDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_fakeDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    :goto_0
    return-object p1
.end method

.method private getVerifiedCrossfadeDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedCheckDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v2, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v2
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isDismissed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->requestProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$10(ILandroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;-><init>()V

    iget-object v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->hash:Ljava/lang/String;

    iput-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;->hash:Ljava/lang/String;

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert;ILorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;)V

    const/4 p1, 0x2

    invoke-virtual {v0, p2, v1, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private synthetic lambda$new$2(ZLandroid/content/DialogInterface;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {p2, v0, p1}, Lorg/telegram/ui/Components/JoinGroupAlert;->showBulletin(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    return-void
.end method

.method private synthetic lambda$new$3(ZLorg/telegram/tgnet/TLRPC$TL_error;)Z
    .locals 1

    if-eqz p2, :cond_0

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v0, "INVITE_REQUEST_SENT"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda9;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert;Z)V

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$new$4(ZLandroid/content/DialogInterface;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {p2, v0, p1}, Lorg/telegram/ui/Components/JoinGroupAlert;->showBulletin(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    return-void
.end method

.method private synthetic lambda$new$5(Lorg/telegram/tgnet/TLRPC$TL_error;ZLorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "INVITE_REQUEST_SENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda11;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert;Z)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    :cond_1
    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-object v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, p1, v0, p3, v1}, Lorg/telegram/ui/Components/AlertsCreator;->processError(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    :cond_3
    :goto_1
    return-void
.end method

.method private synthetic lambda$new$6(ZLorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    new-instance p3, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda8;

    invoke-direct {p3, p0, p4, p1, p2}, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert;Lorg/telegram/tgnet/TLRPC$TL_error;ZLorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$7(ZLandroid/view/View;)V
    .locals 10

    new-instance p2, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert;)V

    const-wide/16 v0, 0x190

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    iget-object p2, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p2, :cond_0

    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object p2, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    new-instance v8, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda5;

    invoke-direct {v8, p0}, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert;)V

    new-instance v9, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda6;

    invoke-direct {v9, p0, p1}, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert;Z)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/MessagesController;->addUserToChat(JLorg/telegram/tgnet/TLRPC$User;ILjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;ZLjava/lang/Runnable;Lorg/telegram/messenger/MessagesController$ErrorDelegate;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;-><init>()V

    iget-object v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->hash:Ljava/lang/String;

    iput-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;->hash:Ljava/lang/String;

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert;ZLorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;)V

    const/4 p1, 0x2

    invoke-virtual {v0, p2, v1, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$8(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Updates;

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    iput-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    iput-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->kicked:Z

    iget p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object p4, p2, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    invoke-virtual {p3, p4, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {p3, p2, v0}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    iget-wide p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/JoinGroupAlert;->openChat(J)V

    goto :goto_1

    :cond_1
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "USER_ALREADY_PARTICIPANT"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    if-nez p3, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->chatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    if-eqz p2, :cond_2

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p2, :cond_2

    iget-wide p1, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    goto :goto_0

    :cond_2
    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-object p3, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, p1, p3, p4, v0}, Lorg/telegram/ui/Components/AlertsCreator;->processError(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    :cond_3
    :goto_1
    return-void
.end method

.method private synthetic lambda$new$9(ILorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 9

    if-nez p4, :cond_0

    move-object v0, p3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Updates;

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda10;

    move-object v3, v0

    move-object v4, p0

    move-object v5, p4

    move-object v6, p3

    move v7, p1

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/JoinGroupAlert;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private openChat(J)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "chat_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1, v0, p2}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p1, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/JoinGroupAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v0, p2, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    :cond_0
    return-void
.end method

.method public static showBulletin(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V
    .locals 3

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-object p0, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v1, Lorg/telegram/messenger/R$raw;->timer_3:I

    const/16 v2, 0x1c

    invoke-virtual {p0, v1, v2, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    iget-object p0, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v1, Lorg/telegram/messenger/R$string;->RequestToJoinSent:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_2

    sget p0, Lorg/telegram/messenger/R$string;->RequestToJoinChannelSentDescription:I

    :goto_0
    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    sget p0, Lorg/telegram/messenger/R$string;->RequestToJoinGroupSentDescription:I

    goto :goto_0

    :goto_1
    iget-object p2, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->subtitleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p0, 0xabe

    invoke-static {p1, v0, p0}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method
