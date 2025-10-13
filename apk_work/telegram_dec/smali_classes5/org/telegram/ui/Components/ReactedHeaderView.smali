.class public Lorg/telegram/ui/Components/ReactedHeaderView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ReactedHeaderView$UserSeen;
    }
.end annotation


# instance fields
.field private avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

.field private currentAccount:I

.field private dialogId:J

.field private fixedWidth:I

.field private flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

.field private iconView:Landroid/widget/ImageView;

.field private ignoreLayout:Z

.field private isLoaded:Z

.field private message:Lorg/telegram/messenger/MessageObject;

.field private reactView:Lorg/telegram/ui/Components/BackupImageView;

.field private seenCallback:Landroidx/core/util/Consumer;

.field private seenUsers:Ljava/util/List;

.field private titleView:Landroid/widget/TextView;

.field private users:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$6k5yybSRTWlcMqMcmyrsNuMQwm8(Lorg/telegram/ui/Components/ReactedHeaderView;Lorg/telegram/tgnet/TLObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/ReactedHeaderView;->lambda$onAttachedToWindow$1(Lorg/telegram/tgnet/TLObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9qpietCFqwkxZJotd3Y1Ec2G3XE(Lorg/telegram/ui/Components/ReactedHeaderView;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ReactedHeaderView;->lambda$onAttachedToWindow$0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DLZ2RF5EmgO-FwQ1ufTuC7qqf8Y(Lorg/telegram/ui/Components/ReactedHeaderView;ILorg/telegram/tgnet/TLRPC$TL_messages_messageReactionsList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ReactedHeaderView;->lambda$loadReactions$6(ILorg/telegram/tgnet/TLRPC$TL_messages_messageReactionsList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$G9XSZJSzmE9HNk3lYBZc8ApRTUI(Lorg/telegram/ui/Components/ReactedHeaderView;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Components/ReactedHeaderView;->lambda$onAttachedToWindow$2(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IHIYwVtDG2ExOUQV83nv2ZSuID8(Lorg/telegram/ui/Components/ReactedHeaderView;JLorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/ReactedHeaderView;->lambda$onAttachedToWindow$5(JLorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WLVShuvP6GvdSaClK7TG0rrcNn0(Lorg/telegram/ui/Components/ReactedHeaderView;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Components/ReactedHeaderView;->lambda$onAttachedToWindow$4(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cVjtk1SNKfBKvSh8e4JLYcDzKxw(Lorg/telegram/ui/Components/ReactedHeaderView;Lorg/telegram/tgnet/TLObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/ReactedHeaderView;->lambda$onAttachedToWindow$3(Lorg/telegram/tgnet/TLObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oTvvU_Q8jECjq-ksT8415vGaDS0(Lorg/telegram/ui/Components/ReactedHeaderView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ReactedHeaderView;->lambda$loadReactions$7(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/messenger/MessageObject;J)V
    .locals 7

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->seenUsers:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->users:Ljava/util/List;

    iput p2, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->currentAccount:I

    iput-object p3, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->message:Lorg/telegram/messenger/MessageObject;

    iput-wide p4, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->dialogId:J

    new-instance p2, Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    const/4 p5, -0x1

    invoke-virtual {p2, p3, p4, p5}, Lorg/telegram/ui/Components/FlickerLoadingView;->setColors(III)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/16 p3, 0xd

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/4 p4, -0x2

    const/high16 p5, -0x40800000    # -1.0f

    invoke-static {p4, p5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p4

    invoke-virtual {p0, p2, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->titleView:Landroid/widget/TextView;

    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-static {p4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p4

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->titleView:Landroid/widget/TextView;

    const/high16 p4, 0x41800000    # 16.0f

    const/4 p5, 0x1

    invoke-virtual {p2, p5, p4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->titleView:Landroid/widget/TextView;

    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setLines(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->titleView:Landroid/widget/TextView;

    sget-object p4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->titleView:Landroid/widget/TextView;

    const/high16 v5, 0x42780000    # 62.0f

    const/4 v6, 0x0

    const/high16 v0, -0x40000000    # -2.0f

    const/high16 v1, -0x40000000    # -2.0f

    const v2, 0x800013

    const/high16 v3, 0x42200000    # 40.0f

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p4

    invoke-virtual {p0, p2, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-direct {p2, p1, p3}, Lorg/telegram/ui/Components/AvatarsImageView;-><init>(Landroid/content/Context;Z)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    const/16 p4, 0xb

    invoke-virtual {p2, p4}, Lorg/telegram/ui/Components/AvatarsImageView;->setStyle(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    const/high16 p4, 0x41b00000    # 22.0f

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    invoke-virtual {p2, p4}, Lorg/telegram/ui/Components/AvatarsImageView;->setAvatarsTextSize(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    const/4 v5, 0x0

    const/high16 v0, 0x42600000    # 56.0f

    const/high16 v1, -0x40800000    # -1.0f

    const v2, 0x800015

    const/4 v3, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p4

    invoke-virtual {p0, p2, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->iconView:Landroid/widget/ImageView;

    const/high16 v0, 0x41c00000    # 24.0f

    const/high16 v1, 0x41c00000    # 24.0f

    const v2, 0x800013

    const/high16 v3, 0x41300000    # 11.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p4

    invoke-virtual {p0, p2, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_reactions:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    new-instance p4, Landroid/graphics/PorterDuffColorFilter;

    sget p5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    invoke-static {p5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p5

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p4, p5, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, p4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p4, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p4, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->iconView:Landroid/widget/ImageView;

    const/16 p4, 0x8

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance p2, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->reactView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->titleView:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    invoke-static {p3}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic lambda$loadReactions$6(ILorg/telegram/tgnet/TLRPC$TL_messages_messageReactionsList;)V
    .locals 11

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->seenUsers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->seenUsers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->seenUsers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne p1, v1, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->seenUsers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v3, "Reacted"

    invoke-static {v3, p1}, Lorg/telegram/messenger/LocaleController;->getPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-array v3, v0, [Ljava/lang/Object;

    aput-object v1, v3, v2

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    :goto_1
    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "ReactionsCount"

    invoke-static {v3, p1, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->fixedWidth:I

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->message:Lorg/telegram/messenger/MessageObject;

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz p1, :cond_5

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$MessageReactions;->results:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v0, :cond_5

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_messageReactionsList;->reactions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    iget p1, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaDataController;->getReactionsList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    iget-object v4, v10, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->reaction:Ljava/lang/String;

    iget-object v5, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_messageReactionsList;->reactions:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v5, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->reactView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object p1, v10, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->center_icon:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    const-string v8, "webp"

    const/4 v9, 0x0

    const-string v7, "40_40_lastreactframe"

    invoke-virtual/range {v5 .. v10}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->reactView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->reactView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->reactView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->iconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_3
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_messageReactionsList;->users:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    iget-object v3, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v3, :cond_6

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    :goto_5
    iget-object v4, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->users:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    iget-object v4, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->users:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/ReactedHeaderView$UserSeen;

    iget-wide v4, v4, Lorg/telegram/ui/Components/ReactedHeaderView$UserSeen;->dialogId:J

    iget-wide v6, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v8, v4, v6

    if-nez v8, :cond_7

    goto :goto_4

    :cond_7
    add-int/2addr v3, v0

    goto :goto_5

    :cond_8
    iget-object v3, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->users:Ljava/util/List;

    new-instance v4, Lorg/telegram/ui/Components/ReactedHeaderView$UserSeen;

    invoke-direct {v4, v1, v2}, Lorg/telegram/ui/Components/ReactedHeaderView$UserSeen;-><init>(Lorg/telegram/tgnet/TLObject;I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_messageReactionsList;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v1, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v1, :cond_a

    iget-wide v3, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iget-wide v5, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    :goto_7
    iget-object v3, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->users:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_c

    iget-object v3, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->users:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/ReactedHeaderView$UserSeen;

    iget-wide v3, v3, Lorg/telegram/ui/Components/ReactedHeaderView$UserSeen;->dialogId:J

    iget-wide v5, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v5, v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_b

    goto :goto_6

    :cond_b
    add-int/2addr v1, v0

    goto :goto_7

    :cond_c
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->users:Ljava/util/List;

    new-instance v3, Lorg/telegram/ui/Components/ReactedHeaderView$UserSeen;

    invoke-direct {v3, p2, v2}, Lorg/telegram/ui/Components/ReactedHeaderView$UserSeen;-><init>(Lorg/telegram/tgnet/TLObject;I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_d
    invoke-direct {p0}, Lorg/telegram/ui/Components/ReactedHeaderView;->updateView()V

    return-void
.end method

.method private synthetic lambda$loadReactions$7(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_messageReactionsList;

    if-eqz p2, :cond_0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_messageReactionsList;

    iget p2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_messageReactionsList;->count:I

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_messageReactionsList;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    new-instance v0, Lorg/telegram/ui/Components/ReactedHeaderView$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/Components/ReactedHeaderView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/ReactedHeaderView;ILorg/telegram/tgnet/TLRPC$TL_messages_messageReactionsList;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$onAttachedToWindow$0(Ljava/util/List;)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->seenUsers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ReactedHeaderView$UserSeen;

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->users:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->users:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/ReactedHeaderView$UserSeen;

    iget-object v3, v3, Lorg/telegram/ui/Components/ReactedHeaderView$UserSeen;->user:Lorg/telegram/tgnet/TLObject;

    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->getObjectPeerId(Lorg/telegram/tgnet/TLObject;)J

    move-result-wide v3

    iget-object v5, v1, Lorg/telegram/ui/Components/ReactedHeaderView$UserSeen;->user:Lorg/telegram/tgnet/TLObject;

    invoke-static {v5}, Lorg/telegram/messenger/MessageObject;->getObjectPeerId(Lorg/telegram/tgnet/TLObject;)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    iget v3, v1, Lorg/telegram/ui/Components/ReactedHeaderView$UserSeen;->date:I

    if-lez v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->users:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/ReactedHeaderView$UserSeen;

    iget v1, v1, Lorg/telegram/ui/Components/ReactedHeaderView$UserSeen;->date:I

    iput v1, v2, Lorg/telegram/ui/Components/ReactedHeaderView$UserSeen;->date:I

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->users:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->seenCallback:Landroidx/core/util/Consumer;

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/Components/ReactedHeaderView;->loadReactions()V

    return-void
.end method

.method private synthetic lambda$onAttachedToWindow$1(Lorg/telegram/tgnet/TLObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 5

    if-eqz p1, :cond_1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->users:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    iget v3, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-nez v4, :cond_0

    if-ltz v3, :cond_0

    new-instance v4, Lorg/telegram/ui/Components/ReactedHeaderView$UserSeen;

    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v4, v2, v3}, Lorg/telegram/ui/Components/ReactedHeaderView$UserSeen;-><init>(Lorg/telegram/tgnet/TLObject;I)V

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$onAttachedToWindow$2(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    new-instance p6, Lorg/telegram/ui/Components/ReactedHeaderView$$ExternalSyntheticLambda5;

    move-object v0, p6

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ReactedHeaderView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/ReactedHeaderView;Lorg/telegram/tgnet/TLObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Runnable;)V

    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onAttachedToWindow$3(Lorg/telegram/tgnet/TLObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 5

    if-eqz p1, :cond_1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;->users:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_chatFull;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    iget v3, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-nez v4, :cond_0

    if-ltz v3, :cond_0

    new-instance v4, Lorg/telegram/ui/Components/ReactedHeaderView$UserSeen;

    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v4, v2, v3}, Lorg/telegram/ui/Components/ReactedHeaderView$UserSeen;-><init>(Lorg/telegram/tgnet/TLObject;I)V

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$onAttachedToWindow$4(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    new-instance p6, Lorg/telegram/ui/Components/ReactedHeaderView$$ExternalSyntheticLambda7;

    move-object v0, p6

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ReactedHeaderView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/ReactedHeaderView;Lorg/telegram/tgnet/TLObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Runnable;)V

    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onAttachedToWindow$5(JLorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    instance-of p5, p4, Lorg/telegram/tgnet/Vector;

    if-eqz p5, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast p4, Lorg/telegram/tgnet/Vector;

    iget-object p4, p4, Lorg/telegram/tgnet/Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    const/4 v0, 0x0

    if-eqz p5, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    instance-of v1, p5, Ljava/lang/Long;

    if-eqz v1, :cond_1

    check-cast p5, Ljava/lang/Long;

    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v1, p1, v5

    if-eqz v1, :cond_0

    invoke-interface {v2, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    :goto_1
    invoke-interface {v4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    instance-of v0, p5, Lorg/telegram/tgnet/TLRPC$TL_readParticipantDate;

    if-eqz v0, :cond_0

    check-cast p5, Lorg/telegram/tgnet/TLRPC$TL_readParticipantDate;

    iget-wide v0, p5, Lorg/telegram/tgnet/TLRPC$TL_readParticipantDate;->user_id:J

    iget p5, p5, Lorg/telegram/tgnet/TLRPC$TL_readParticipantDate;->date:I

    cmp-long v3, p1, v0

    if-eqz v3, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    goto :goto_1

    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lorg/telegram/ui/Components/ReactedHeaderView$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, v3}, Lorg/telegram/ui/Components/ReactedHeaderView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ReactedHeaderView;Ljava/util/List;)V

    invoke-static {p3}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;-><init>()V

    iget p2, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget p2, p2, Lorg/telegram/messenger/MessagesController;->chatReadMarkSizeThreshold:I

    iput p2, p1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->limit:I

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->offset:I

    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;-><init>()V

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    iget p2, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-wide p3, p3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {p2, p3, p4}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    iget p2, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/Components/ReactedHeaderView$$ExternalSyntheticLambda3;

    move-object v0, p3

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ReactedHeaderView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ReactedHeaderView;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Runnable;)V

    :goto_2
    invoke-virtual {p2, p1, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_3

    :cond_3
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messages_getFullChat;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getFullChat;-><init>()V

    iget-wide p2, p3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iput-wide p2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_getFullChat;->chat_id:J

    iget p2, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/Components/ReactedHeaderView$$ExternalSyntheticLambda4;

    move-object v0, p3

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ReactedHeaderView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/ReactedHeaderView;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method private loadReactions()V
    .locals 4

    iget v0, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReactionsList;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReactionsList;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReactionsList;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-object v0, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReactionsList;->id:I

    const/4 v0, 0x3

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReactionsList;->limit:I

    const/4 v0, 0x0

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReactionsList;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReactionsList;->offset:Ljava/lang/String;

    iget v0, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Components/ReactedHeaderView$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ReactedHeaderView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ReactedHeaderView;)V

    const/16 v3, 0x40

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private updateView()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->users:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    const/4 v0, 0x0

    :goto_1
    const/4 v3, 0x3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->users:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    iget v4, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->currentAccount:I

    iget-object v5, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->users:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/ReactedHeaderView$UserSeen;

    iget-object v5, v5, Lorg/telegram/ui/Components/ReactedHeaderView$UserSeen;->user:Lorg/telegram/tgnet/TLObject;

    :goto_2
    invoke-virtual {v3, v0, v4, v5}, Lorg/telegram/ui/Components/AvatarsImageView;->setObject(IILorg/telegram/tgnet/TLObject;)V

    goto :goto_3

    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    iget v4, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->currentAccount:I

    const/4 v5, 0x0

    goto :goto_2

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->users:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/high16 v3, 0x41400000    # 12.0f

    const/4 v4, 0x0

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v0, 0x0

    goto :goto_5

    :cond_3
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    :goto_4
    int-to-float v0, v0

    goto :goto_5

    :cond_4
    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_4

    :goto_5
    iget-object v2, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    :cond_5
    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AvatarsImageView;->commitTransition(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/HideViewAfterAnimation;

    iget-object v2, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/HideViewAfterAnimation;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method


# virtual methods
.method public getSeenUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/ReactedHeaderView$UserSeen;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->seenUsers:Ljava/util/List;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 6

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->isLoaded:Z

    if-nez v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getChatId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getChatId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    if-eqz v1, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isSent()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isEditing()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isSending()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isSendError()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isContentUnread()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isUnread()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    sub-int/2addr v2, v3

    const v3, 0x93a80

    if-ge v2, v3, :cond_2

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isMegagroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    if-eqz v0, :cond_2

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    iget v2, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v2, v2, Lorg/telegram/messenger/MessagesController;->chatReadMarkSizeThreshold:I

    if-gt v0, v2, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatJoinedByRequest;

    if-nez v0, :cond_2

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReadParticipants;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReadParticipants;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReadParticipants;->msg_id:I

    iget v2, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReadParticipants;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-object v2, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->message:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v2, :cond_1

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    :goto_0
    iget v4, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Components/ReactedHeaderView$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v2, v3, v1}, Lorg/telegram/ui/Components/ReactedHeaderView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ReactedHeaderView;JLorg/telegram/tgnet/TLRPC$Chat;)V

    const/16 v1, 0x40

    invoke-virtual {v4, v0, v5, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/ReactedHeaderView;->loadReactions()V

    :cond_3
    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->fixedWidth:I

    if-lez v0, :cond_0

    const/high16 p1, 0x40000000    # 2.0f

    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->ignoreLayout:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->ignoreLayout:Z

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setSeenCallback(Landroidx/core/util/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lorg/telegram/ui/Components/ReactedHeaderView;->seenCallback:Landroidx/core/util/Consumer;

    return-void
.end method
