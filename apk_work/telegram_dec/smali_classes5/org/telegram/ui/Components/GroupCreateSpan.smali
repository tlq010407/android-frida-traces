.class public Lorg/telegram/ui/Components/GroupCreateSpan;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static backPaint:Landroid/graphics/Paint;

.field private static textPaint:Landroid/text/TextPaint;


# instance fields
.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private colors:[I

.field private currentContact:Lorg/telegram/messenger/ContactsController$Contact;

.field private deleteDrawable:Landroid/graphics/drawable/Drawable;

.field private deleting:Z

.field private drawAvatarBackground:Z

.field private imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field public isFlag:Z

.field private key:Ljava/lang/String;

.field private lastUpdateTime:J

.field private nameLayout:Landroid/text/StaticLayout;

.field private progress:F

.field private rect:Landroid/graphics/RectF;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private small:Z

.field private textWidth:I

.field private textX:F

.field private uid:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Components/GroupCreateSpan;->textPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Components/GroupCreateSpan;->backPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Components/GroupCreateSpan;-><init>(Landroid/content/Context;Ljava/lang/Object;Lorg/telegram/messenger/ContactsController$Contact;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lorg/telegram/messenger/ContactsController$Contact;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Components/GroupCreateSpan;-><init>(Landroid/content/Context;Ljava/lang/Object;Lorg/telegram/messenger/ContactsController$Contact;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lorg/telegram/messenger/ContactsController$Contact;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 6

    .line 0
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/GroupCreateSpan;-><init>(Landroid/content/Context;Ljava/lang/Object;Lorg/telegram/messenger/ContactsController$Contact;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lorg/telegram/messenger/ContactsController$Contact;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 32

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct/range {p0 .. p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->rect:Landroid/graphics/RectF;

    const/16 v5, 0x8

    new-array v6, v5, [I

    iput-object v6, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->colors:[I

    const/4 v6, 0x1

    iput-boolean v6, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->drawAvatarBackground:Z

    iput-object v4, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-boolean v3, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->small:Z

    const/4 v7, 0x0

    iput-boolean v7, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->isFlag:Z

    iput-object v2, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->currentContact:Lorg/telegram/messenger/ContactsController$Contact;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$drawable;->delete:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->deleteDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v8, Lorg/telegram/ui/Components/GroupCreateSpan;->textPaint:Landroid/text/TextPaint;

    if-eqz v3, :cond_0

    const/high16 v9, 0x41500000    # 13.0f

    goto :goto_0

    :cond_0
    const/high16 v9, 0x41600000    # 14.0f

    :goto_0
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v8, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v8}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v8, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/high16 v9, 0x41a00000    # 20.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/AvatarDrawable;->setTextSize(I)V

    instance-of v8, v1, Ljava/lang/String;

    const-string v9, "miniapps"

    const-string v10, "premium"

    const/16 v11, 0xa

    const v13, 0x3f4ccccd    # 0.8f

    if-eqz v8, :cond_2

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    iget-object v15, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v15, v13}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v13

    const/16 v15, 0xb

    const/16 v12, 0x9

    const/4 v14, 0x6

    const/4 v7, 0x7

    sparse-switch v13, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v13, "channels"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    goto/16 :goto_2

    :sswitch_1
    const-string v13, "existing_chats"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x7

    goto/16 :goto_2

    :sswitch_2
    const-string v13, "muted"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    goto :goto_2

    :sswitch_3
    const-string v13, "read"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x6

    goto :goto_2

    :sswitch_4
    const-string v13, "bots"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_2

    :sswitch_5
    const-string v13, "new_chats"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    goto :goto_2

    :sswitch_6
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x9

    goto :goto_2

    :sswitch_7
    const-string v13, "contacts"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_2

    :sswitch_8
    const-string v13, "non_contacts"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :sswitch_9
    const-string v13, "groups"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_2

    :sswitch_a
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xa

    goto :goto_2

    :sswitch_b
    const-string v13, "archived"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xb

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v2, -0x1

    :goto_2
    packed-switch v2, :pswitch_data_0

    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v2, v15}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    const-wide v4, -0x7ffffffffffffff9L    # -3.5E-323

    iput-wide v4, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->uid:J

    sget v2, Lorg/telegram/messenger/R$string;->FilterArchived:I

    :goto_3
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_4
    const/16 v17, 0x0

    const/16 v23, 0x0

    goto/16 :goto_5

    :pswitch_0
    iput-boolean v6, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->isFlag:Z

    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundBlue:I

    invoke-static {v5, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_background2Blue:I

    invoke-static {v7, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v2, v5, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setColor(II)V

    sget v2, Lorg/telegram/messenger/R$string;->PrivacyMiniapps:I

    goto :goto_3

    :pswitch_1
    iput-boolean v6, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->isFlag:Z

    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradientBackground2:I

    invoke-static {v5, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setColor(I)V

    sget v2, Lorg/telegram/messenger/R$string;->PrivacyPremium:I

    goto :goto_3

    :pswitch_2
    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v4, 0x18

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    const-wide v4, -0x7ffffffffffffff7L    # -4.4E-323

    iput-wide v4, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->uid:J

    sget v2, Lorg/telegram/messenger/R$string;->FilterNewChats:I

    goto :goto_3

    :pswitch_3
    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v4, 0x17

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    const-wide v4, -0x7ffffffffffffff8L    # -4.0E-323

    iput-wide v4, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->uid:J

    sget v2, Lorg/telegram/messenger/R$string;->FilterExistingChats:I

    goto :goto_3

    :pswitch_4
    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v2, v11}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    const-wide v4, -0x7ffffffffffffffaL    # -3.0E-323

    iput-wide v4, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->uid:J

    sget v2, Lorg/telegram/messenger/R$string;->FilterRead:I

    goto :goto_3

    :pswitch_5
    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v2, v12}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    const-wide v4, -0x7ffffffffffffffbL    # -2.5E-323

    iput-wide v4, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->uid:J

    sget v2, Lorg/telegram/messenger/R$string;->FilterMuted:I

    goto :goto_3

    :pswitch_6
    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    const-wide v4, -0x7ffffffffffffffcL    # -2.0E-323

    iput-wide v4, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->uid:J

    sget v2, Lorg/telegram/messenger/R$string;->FilterBots:I

    goto :goto_3

    :pswitch_7
    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v2, v7}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    const-wide v4, -0x7ffffffffffffffdL    # -1.5E-323

    iput-wide v4, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->uid:J

    sget v2, Lorg/telegram/messenger/R$string;->FilterChannels:I

    goto/16 :goto_3

    :pswitch_8
    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v2, v14}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    const-wide v4, -0x7ffffffffffffffeL    # -1.0E-323

    iput-wide v4, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->uid:J

    sget v2, Lorg/telegram/messenger/R$string;->FilterGroups:I

    goto/16 :goto_3

    :pswitch_9
    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v4, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->uid:J

    sget v2, Lorg/telegram/messenger/R$string;->FilterNonContacts:I

    goto/16 :goto_3

    :pswitch_a
    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    const-wide/high16 v4, -0x8000000000000000L

    iput-wide v4, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->uid:J

    sget v2, Lorg/telegram/messenger/R$string;->FilterContacts:I

    goto/16 :goto_3

    :cond_2
    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v5, :cond_6

    move-object v2, v1

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v4, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->uid:J

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget v2, Lorg/telegram/messenger/R$string;->RepliesTitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v4, v13}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    iget-object v4, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    goto/16 :goto_4

    :cond_3
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget v2, Lorg/telegram/messenger/R$string;->SavedMessages:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v4, v13}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    iget-object v4, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    goto/16 :goto_4

    :cond_4
    iget-object v4, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_5

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_5
    invoke-static {v2, v6}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v15

    move-object/from16 v23, v2

    move-object v2, v4

    move-object/from16 v17, v15

    goto/16 :goto_5

    :cond_6
    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v5, :cond_7

    move-object v15, v1

    check-cast v15, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v2, v15}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    iget-wide v4, v15, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v4, v4

    iput-wide v4, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->uid:J

    iget-object v2, v15, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-static {v15, v6}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    move-object/from16 v17, v4

    move-object/from16 v23, v15

    goto/16 :goto_5

    :cond_7
    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$TL_help_country;

    if-eqz v5, :cond_8

    move-object v2, v1

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_help_country;

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_help_country;->iso2:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getLanguageFlag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_help_country;->default_name:Ljava/lang/String;

    iget-object v7, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v12, 0x11

    invoke-virtual {v7, v12}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    iget-object v7, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/high16 v12, 0x41c00000    # 24.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-virtual {v7, v12}, Lorg/telegram/ui/Components/AvatarDrawable;->setTextSize(I)V

    iget-object v7, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v17, 0x0

    move-object/from16 v16, v7

    invoke-virtual/range {v16 .. v21}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v12, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    const v12, 0x3f333333    # 0.7f

    invoke-static {v4, v12}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v4

    invoke-virtual {v7, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setColor(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v7, 0x0

    iput-boolean v7, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->drawAvatarBackground:Z

    invoke-virtual {v4, v7}, Lorg/telegram/ui/Components/AvatarDrawable;->setDrawAvatarBackground(Z)V

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_help_country;->default_name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v12, v2

    iput-wide v12, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->uid:J

    move-object v2, v5

    goto/16 :goto_4

    :cond_8
    iget-object v4, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v5, v2, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    iget-object v7, v2, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    const-wide/16 v12, 0x0

    invoke-virtual {v4, v12, v13, v5, v7}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;)V

    iget v4, v2, Lorg/telegram/messenger/ContactsController$Contact;->contact_id:I

    int-to-long v4, v4

    iput-wide v4, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->uid:J

    iget-object v4, v2, Lorg/telegram/messenger/ContactsController$Contact;->key:Ljava/lang/String;

    iput-object v4, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->key:Ljava/lang/String;

    iget-object v4, v2, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v2, v2, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    goto/16 :goto_4

    :cond_9
    iget-object v2, v2, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    goto/16 :goto_4

    :goto_5
    new-instance v4, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v4}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-boolean v5, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->drawAvatarBackground:Z

    const/4 v7, 0x0

    if-eqz v5, :cond_a

    const/4 v5, 0x0

    goto :goto_6

    :cond_a
    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    :goto_6
    const/high16 v12, 0x42000000    # 32.0f

    const/high16 v13, 0x41e00000    # 28.0f

    if-eqz v3, :cond_b

    const/high16 v14, 0x41e00000    # 28.0f

    goto :goto_7

    :cond_b
    const/high16 v14, 0x42000000    # 32.0f

    :goto_7
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    if-eqz v3, :cond_c

    const/high16 v12, 0x41e00000    # 28.0f

    :cond_c
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v4, v5, v7, v14, v12}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    const/16 v5, 0x1c

    if-eqz v4, :cond_e

    if-eqz v3, :cond_d

    goto :goto_8

    :cond_d
    const/16 v5, 0x20

    :goto_8
    rsub-int v3, v5, 0x18e

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x2

    div-int/2addr v3, v4

    :goto_9
    const/16 v4, 0x20

    goto :goto_b

    :cond_e
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v4, Landroid/graphics/Point;->x:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-eqz v3, :cond_f

    goto :goto_a

    :cond_f
    const/16 v5, 0x20

    :goto_a
    add-int/lit16 v5, v5, 0x84

    int-to-float v3, v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v4, v3

    const/4 v3, 0x2

    div-int/lit8 v3, v4, 0x2

    goto :goto_9

    :goto_b
    invoke-virtual {v2, v11, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lorg/telegram/ui/Components/GroupCreateSpan;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v2

    sget-object v4, Lorg/telegram/ui/Components/GroupCreateSpan;->textPaint:Landroid/text/TextPaint;

    int-to-float v3, v3

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v2, v4, v3, v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v25

    new-instance v2, Landroid/text/StaticLayout;

    sget-object v26, Lorg/telegram/ui/Components/GroupCreateSpan;->textPaint:Landroid/text/TextPaint;

    sget-object v28, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v27, 0x3e8

    const/high16 v29, 0x3f800000    # 1.0f

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v31}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v2, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-lez v2, :cond_10

    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->nameLayout:Landroid/text/StaticLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    iput v2, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->textWidth:I

    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v2

    neg-float v2, v2

    iput v2, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->textX:F

    :cond_10
    if-eqz v8, :cond_11

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v1, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->makePremiumUsersDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_c
    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    goto :goto_d

    :cond_11
    if-eqz v8, :cond_12

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->makeMiniAppsDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_c

    :cond_12
    iget-object v1, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v22, 0x0

    const/16 v24, 0x1

    const-string v18, "50_50"

    const-wide/16 v20, 0x0

    move-object/from16 v16, v1

    move-object/from16 v19, v2

    invoke-virtual/range {v16 .. v24}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    :goto_d
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/GroupCreateSpan;->updateColors()V

    invoke-static/range {p0 .. p0}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x664cc81e -> :sswitch_b
        -0x510714b7 -> :sswitch_a
        -0x49c2262c -> :sswitch_9
        -0x4760427b -> :sswitch_8
        -0x21d29fad -> :sswitch_7
        -0x12fb31a9 -> :sswitch_6
        -0xffbd344 -> :sswitch_5
        0x2e3b8c -> :sswitch_4
        0x355996 -> :sswitch_3
        0x636f16b -> :sswitch_2
        0x900dc67 -> :sswitch_1
        0x556423d0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/messenger/ContactsController$Contact;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/ui/Components/GroupCreateSpan;-><init>(Landroid/content/Context;Ljava/lang/Object;Lorg/telegram/messenger/ContactsController$Contact;)V

    return-void
.end method


# virtual methods
.method public cancelDeleteAnimation()V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->deleting:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->deleting:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->lastUpdateTime:J

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getContact()Lorg/telegram/messenger/ContactsController$Contact;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->currentContact:Lorg/telegram/messenger/ContactsController$Contact;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->uid:J

    return-wide v0
.end method

.method public isDeleting()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->deleting:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    iget-boolean v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->deleting:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v3, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    cmpl-float v3, v3, v1

    if-nez v3, :cond_1

    :cond_0
    if-nez v0, :cond_6

    iget v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_6

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->lastUpdateTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x11

    cmp-long v0, v3, v5

    if-ltz v0, :cond_2

    cmp-long v0, v3, v7

    if-lez v0, :cond_3

    :cond_2
    move-wide v3, v7

    :cond_3
    iget-boolean v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->deleting:Z

    const/high16 v5, 0x42f00000    # 120.0f

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    long-to-float v3, v3

    div-float/2addr v3, v5

    add-float/2addr v0, v3

    iput v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5

    iput v1, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    goto :goto_0

    :cond_4
    iget v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    long-to-float v3, v3

    div-float/2addr v3, v5

    sub-float/2addr v0, v3

    iput v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_5

    iput v2, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    :cond_5
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    iget-boolean v4, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->small:Z

    if-eqz v4, :cond_7

    const/high16 v4, 0x41e00000    # 28.0f

    goto :goto_1

    :cond_7
    const/high16 v4, 0x42000000    # 32.0f

    :goto_1
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v2, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    sget-object v0, Lorg/telegram/ui/Components/GroupCreateSpan;->backPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->colors:[I

    const/4 v4, 0x6

    aget v4, v3, v4

    const/4 v5, 0x7

    aget v5, v3, v5

    sub-int/2addr v5, v4

    int-to-float v5, v5

    iget v6, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    add-int/2addr v4, v5

    const/4 v5, 0x0

    aget v5, v3, v5

    const/4 v7, 0x1

    aget v7, v3, v7

    sub-int/2addr v7, v5

    int-to-float v7, v7

    mul-float v7, v7, v6

    float-to-int v7, v7

    add-int/2addr v5, v7

    const/4 v7, 0x2

    aget v7, v3, v7

    const/4 v8, 0x3

    aget v8, v3, v8

    sub-int/2addr v8, v7

    int-to-float v8, v8

    mul-float v8, v8, v6

    float-to-int v8, v8

    add-int/2addr v7, v8

    const/4 v8, 0x4

    aget v8, v3, v8

    const/4 v9, 0x5

    aget v3, v3, v9

    sub-int/2addr v3, v8

    int-to-float v3, v3

    mul-float v3, v3, v6

    float-to-int v3, v3

    add-int/2addr v8, v3

    invoke-static {v4, v5, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->rect:Landroid/graphics/RectF;

    iget-boolean v3, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->small:Z

    const/high16 v4, 0x41600000    # 14.0f

    const/high16 v5, 0x41800000    # 16.0f

    if-eqz v3, :cond_8

    const/high16 v3, 0x41600000    # 14.0f

    goto :goto_2

    :cond_8
    const/high16 v3, 0x41800000    # 16.0f

    :goto_2
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-boolean v6, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->small:Z

    if-eqz v6, :cond_9

    const/high16 v6, 0x41600000    # 14.0f

    goto :goto_3

    :cond_9
    const/high16 v6, 0x41800000    # 16.0f

    :goto_3
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sget-object v7, Lorg/telegram/ui/Components/GroupCreateSpan;->backPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    :cond_a
    iget v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarDrawable;->getColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    sget-object v6, Lorg/telegram/ui/Components/GroupCreateSpan;->backPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lorg/telegram/ui/Components/GroupCreateSpan;->backPaint:Landroid/graphics/Paint;

    iget v6, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    mul-float v6, v6, v3

    mul-float v6, v6, v2

    float-to-int v2, v6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->small:Z

    if-eqz v0, :cond_b

    const/high16 v0, 0x41600000    # 14.0f

    goto :goto_4

    :cond_b
    const/high16 v0, 0x41800000    # 16.0f

    :goto_4
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget-boolean v2, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->small:Z

    if-eqz v2, :cond_c

    const/high16 v2, 0x41600000    # 14.0f

    goto :goto_5

    :cond_c
    const/high16 v2, 0x41800000    # 16.0f

    :goto_5
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-boolean v6, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->small:Z

    if-eqz v6, :cond_d

    goto :goto_6

    :cond_d
    const/high16 v4, 0x41800000    # 16.0f

    :goto_6
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sget-object v6, Lorg/telegram/ui/Components/GroupCreateSpan;->backPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v4, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    sub-float/2addr v1, v0

    const/high16 v0, 0x42340000    # 45.0f

    mul-float v1, v1, v0

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v0, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->deleteDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->small:Z

    const/high16 v2, 0x41300000    # 11.0f

    const/high16 v4, 0x41100000    # 9.0f

    if-eqz v1, :cond_e

    const/high16 v1, 0x41100000    # 9.0f

    goto :goto_7

    :cond_e
    const/high16 v1, 0x41300000    # 11.0f

    :goto_7
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget-boolean v5, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->small:Z

    if-eqz v5, :cond_f

    const/high16 v2, 0x41100000    # 9.0f

    :cond_f
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-boolean v4, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->small:Z

    const/high16 v5, 0x41a80000    # 21.0f

    const/high16 v6, 0x41980000    # 19.0f

    if-eqz v4, :cond_10

    const/high16 v4, 0x41980000    # 19.0f

    goto :goto_8

    :cond_10
    const/high16 v4, 0x41a80000    # 21.0f

    :goto_8
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iget-boolean v7, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->small:Z

    if-eqz v7, :cond_11

    const/high16 v5, 0x41980000    # 19.0f

    :cond_11
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->deleteDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    mul-float v1, v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->deleteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_12
    iget v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->textX:F

    iget-boolean v1, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->small:Z

    if-eqz v1, :cond_13

    const/16 v1, 0x1a

    goto :goto_9

    :cond_13
    const/16 v1, 0x20

    :goto_9
    add-int/lit8 v1, v1, 0x9

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-boolean v1, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->small:Z

    if-eqz v1, :cond_14

    const/high16 v1, 0x40c00000    # 6.0f

    goto :goto_a

    :cond_14
    const/high16 v1, 0x41000000    # 8.0f

    :goto_a
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_groupcreate_spanText:I

    iget-object v1, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_text:I

    iget-object v2, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    sget-object v2, Lorg/telegram/ui/Components/GroupCreateSpan;->textPaint:Landroid/text/TextPaint;

    iget v3, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->progress:F

    invoke-static {v0, v1, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->nameLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/GroupCreateSpan;->isDeleting()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-static {}, Lorg/telegram/ui/Cells/ThemesHorizontalListCell$InnerThemeView$$ExternalSyntheticApiModelOutline0;->m()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat$$ExternalSyntheticApiModelOutline22;->m(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)I

    move-result v1

    sget v2, Lorg/telegram/messenger/R$string;->Delete:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-static {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$$ExternalSyntheticApiModelOutline7;->m(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    iget-boolean p1, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->small:Z

    if-eqz p1, :cond_0

    const/16 p1, 0x14

    goto :goto_0

    :cond_0
    const/16 p1, 0x20

    :goto_0
    add-int/lit8 p1, p1, 0x19

    int-to-float p1, p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iget p2, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->textWidth:I

    add-int/2addr p1, p2

    iget-boolean p2, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->small:Z

    if-eqz p2, :cond_1

    const/high16 p2, 0x41e00000    # 28.0f

    goto :goto_1

    :cond_1
    const/high16 p2, 0x42000000    # 32.0f

    :goto_1
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public startDeleteAnimation()V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->deleting:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->deleting:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->lastUpdateTime:J

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateColors()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarDrawable;->getColor()I

    move-result v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_groupcreate_spanBackground:I

    iget-object v2, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_groupcreate_spanDelete:I

    iget-object v3, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->colors:[I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    const/4 v5, 0x0

    aput v4, v3, v5

    iget-object v3, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->colors:[I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    const/4 v5, 0x1

    aput v4, v3, v5

    iget-object v3, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->colors:[I

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    const/4 v5, 0x2

    aput v4, v3, v5

    iget-object v3, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->colors:[I

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    const/4 v5, 0x3

    aput v4, v3, v5

    iget-object v3, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->colors:[I

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    const/4 v5, 0x4

    aput v4, v3, v5

    iget-object v3, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->colors:[I

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    const/4 v5, 0x5

    aput v4, v3, v5

    iget-object v3, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->colors:[I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    const/4 v5, 0x6

    aput v4, v3, v5

    iget-object v3, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->colors:[I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/4 v4, 0x7

    aput v0, v3, v4

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateSpan;->deleteDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    sget-object v0, Lorg/telegram/ui/Components/GroupCreateSpan;->backPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
