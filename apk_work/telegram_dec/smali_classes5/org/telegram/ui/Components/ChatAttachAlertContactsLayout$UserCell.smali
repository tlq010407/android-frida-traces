.class public Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserCell"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell$CharSequenceCallback;
    }
.end annotation


# instance fields
.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private checkBox:Lorg/telegram/ui/Components/CheckBox2;

.field private currentAccount:I

.field private currentId:I

.field private currentName:Ljava/lang/CharSequence;

.field private currentStatus:Ljava/lang/CharSequence;

.field private currentUser:Lorg/telegram/tgnet/TLRPC$User;

.field private formattedPhoneNumber:Ljava/lang/CharSequence;

.field private formattedPhoneNumberUser:Lorg/telegram/tgnet/TLRPC$User;

.field private lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private lastName:Ljava/lang/String;

.field private lastStatus:I

.field private nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private needDivider:Z

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;


# direct methods
.method public static synthetic $r8$lambda$OEbHeUZ4S9nFsVCQo0TtS6HygzI(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;Ljava/lang/CharSequence;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->lambda$setData$0(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fwdvdjzXD_8HrYNJpryRge_XHdY(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->lambda$setStatus$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$w-qCMfY9bgcNREl7jw5pC56uI7U(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->lambda$setStatus$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$zIXSX9FkL26mOBD5O1cOZ0zsBTE(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell$CharSequenceCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->lambda$setData$1(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell$CharSequenceCallback;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->currentAccount:I

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance v3, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v3, v2}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    new-instance v3, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v4, 0x41b80000    # 23.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v5, 0x5

    const/4 v6, 0x3

    if-eqz v4, :cond_0

    const/4 v7, 0x5

    goto :goto_0

    :cond_0
    const/4 v7, 0x3

    :goto_0
    or-int/lit8 v10, v7, 0x30

    const/high16 v7, 0x41600000    # 14.0f

    const/4 v15, 0x0

    if-eqz v4, :cond_1

    const/4 v11, 0x0

    goto :goto_1

    :cond_1
    const/high16 v11, 0x41600000    # 14.0f

    :goto_1
    if-eqz v4, :cond_2

    const/high16 v13, 0x41600000    # 14.0f

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    :goto_2
    const/4 v14, 0x0

    const/16 v8, 0x2e

    const/high16 v9, 0x42380000    # 46.0f

    const/high16 v12, 0x41100000    # 9.0f

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell$1;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell$1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v3}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_3

    const/4 v4, 0x5

    goto :goto_3

    :cond_3
    const/4 v4, 0x3

    :goto_3
    or-int/lit8 v4, v4, 0x30

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_4

    const/4 v7, 0x5

    goto :goto_4

    :cond_4
    const/4 v7, 0x3

    :goto_4
    or-int/lit8 v10, v7, 0x30

    const/high16 v7, 0x42900000    # 72.0f

    const/high16 v16, 0x41e00000    # 28.0f

    if-eqz v4, :cond_5

    const/high16 v11, 0x41e00000    # 28.0f

    goto :goto_5

    :cond_5
    const/high16 v11, 0x42900000    # 72.0f

    :goto_5
    if-eqz v4, :cond_6

    const/high16 v13, 0x42900000    # 72.0f

    goto :goto_6

    :cond_6
    const/high16 v13, 0x41e00000    # 28.0f

    :goto_6
    const/4 v14, 0x0

    const/4 v8, -0x1

    const/high16 v9, 0x41a00000    # 20.0f

    const/high16 v12, 0x41400000    # 12.0f

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray2:I

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_7

    const/4 v4, 0x5

    goto :goto_7

    :cond_7
    const/4 v4, 0x3

    :goto_7
    or-int/lit8 v4, v4, 0x30

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_8

    const/4 v8, 0x5

    goto :goto_8

    :cond_8
    const/4 v8, 0x3

    :goto_8
    or-int/lit8 v19, v8, 0x30

    if-eqz v4, :cond_9

    const/high16 v20, 0x41e00000    # 28.0f

    goto :goto_9

    :cond_9
    const/high16 v20, 0x42900000    # 72.0f

    :goto_9
    if-eqz v4, :cond_a

    const/high16 v22, 0x42900000    # 72.0f

    goto :goto_a

    :cond_a
    const/high16 v22, 0x41e00000    # 28.0f

    :goto_a
    const/16 v23, 0x0

    const/16 v17, -0x1

    const/high16 v18, 0x41a00000    # 20.0f

    const/high16 v21, 0x42100000    # 36.0f

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lorg/telegram/ui/Components/CheckBox2;

    const/16 v4, 0x15

    invoke-direct {v3, v1, v4, v2}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v1, v2}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/CheckBox2;->setDrawUnchecked(Z)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_b

    goto :goto_b

    :cond_b
    const/4 v5, 0x3

    :goto_b
    or-int/lit8 v8, v5, 0x30

    const/high16 v3, 0x42300000    # 44.0f

    if-eqz v2, :cond_c

    const/4 v9, 0x0

    goto :goto_c

    :cond_c
    const/high16 v9, 0x42300000    # 44.0f

    :goto_c
    if-eqz v2, :cond_d

    const/high16 v11, 0x42300000    # 44.0f

    goto :goto_d

    :cond_d
    const/4 v11, 0x0

    :goto_d
    const/4 v12, 0x0

    const/16 v6, 0x18

    const/high16 v7, 0x41c00000    # 24.0f

    const/high16 v10, 0x42140000    # 37.0f

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$setData$0(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->setStatus(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$setData$1(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell$CharSequenceCallback;)V
    .locals 1

    invoke-interface {p1}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell$CharSequenceCallback;->run()Ljava/lang/CharSequence;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setStatus$2()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->formattedPhoneNumber:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    return-void
.end method

.method private synthetic lambda$setStatus$3()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->formattedPhoneNumber:Ljava/lang/CharSequence;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->formattedPhoneNumberUser:Lorg/telegram/tgnet/TLRPC$User;

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getThemedColor(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->needDivider:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v1, 0x428c0000    # 70.0f

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    move v3, v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    sub-int/2addr v0, v1

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v6, v0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/high16 v0, 0x42800000    # 64.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->needDivider:Z

    add-int/2addr v0, v1

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setChecked(ZZ)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    return-void
.end method

.method public setCurrentId(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->currentId:I

    return-void
.end method

.method public setData(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V
    .locals 0

    .line 0
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->currentStatus:Ljava/lang/CharSequence;

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->currentName:Ljava/lang/CharSequence;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string p3, ""

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    iput-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->currentStatus:Ljava/lang/CharSequence;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->currentName:Ljava/lang/CharSequence;

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iput-boolean p4, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->needDivider:Z

    xor-int/lit8 p1, p4, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->update(I)V

    return-void
.end method

.method public setData(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/CharSequence;Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell$CharSequenceCallback;Z)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p4}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->setData(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    sget-object p1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p2, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, p3}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell$CharSequenceCallback;)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setStatus(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->currentStatus:Ljava/lang/CharSequence;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v0, Lorg/telegram/messenger/R$string;->NumberUnknown:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->formattedPhoneNumberUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->formattedPhoneNumber:Ljava/lang/CharSequence;

    if-eqz p1, :cond_2

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    sget-object p1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public update(I)V
    .locals 11

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    const/4 v3, 0x0

    if-eqz p1, :cond_a

    sget v4, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_AVATAR:I

    and-int/2addr v4, p1

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_1

    if-eqz v2, :cond_3

    :cond_1
    if-nez v4, :cond_2

    if-nez v2, :cond_3

    :cond_2
    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v10, v6, v8

    if-nez v10, :cond_3

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget v6, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-eq v4, v6, :cond_4

    :cond_3
    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    if-eqz v0, :cond_6

    if-nez v4, :cond_6

    sget v6, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_STATUS:I

    and-int/2addr v6, p1

    if-eqz v6, :cond_6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v6, :cond_5

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    :goto_2
    iget v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->lastStatus:I

    if-eq v6, v7, :cond_6

    const/4 v4, 0x1

    :cond_6
    if-nez v4, :cond_9

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->currentName:Ljava/lang/CharSequence;

    if-nez v6, :cond_9

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->lastName:Ljava/lang/String;

    if-eqz v6, :cond_9

    sget v6, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_NAME:I

    and-int/2addr p1, v6

    if-eqz p1, :cond_9

    if-eqz v0, :cond_7

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_7
    move-object p1, v1

    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->lastName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_5

    :cond_8
    :goto_4
    move v5, v4

    goto :goto_5

    :cond_9
    move-object p1, v1

    goto :goto_4

    :goto_5
    if-nez v5, :cond_b

    return-void

    :cond_a
    move-object p1, v1

    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_d

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->currentAccount:I

    invoke-virtual {v4, v5, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$User;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v0, :cond_c

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->lastStatus:I

    goto :goto_6

    :cond_c
    iput v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->lastStatus:I

    goto :goto_6

    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->currentName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_e

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->currentId:I

    int-to-long v4, v4

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v5, v0, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->currentId:I

    int-to-long v3, v3

    const-string v5, "#"

    invoke-virtual {v0, v3, v4, v5, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;)V

    :goto_6
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->currentName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_f

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->lastName:Ljava/lang/String;

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    :goto_7
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_a

    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_11

    if-nez p1, :cond_10

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p1

    :cond_10
    :goto_8
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->lastName:Ljava/lang/String;

    goto :goto_9

    :cond_11
    const-string p1, ""

    goto :goto_8

    :goto_9
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->lastName:Ljava/lang/String;

    goto :goto_7

    :goto_a
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->currentStatus:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->setStatus(Ljava/lang/CharSequence;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p1, :cond_12

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    goto :goto_b

    :cond_12
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_b
    return-void
.end method
