.class Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Cells/ChannelRecommendationsCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChannelBlock"
.end annotation


# instance fields
.field public final avatarDrawable:[Lorg/telegram/ui/Components/AvatarDrawable;

.field public final avatarImageReceiver:[Lorg/telegram/messenger/ImageReceiver;

.field public final bounce:Lorg/telegram/ui/Components/ButtonBounce;

.field private final cell:Lorg/telegram/ui/Cells/ChatMessageCell;

.field public final chat:Lorg/telegram/tgnet/TLObject;

.field public final isLock:Z

.field private final name:Ljava/lang/CharSequence;

.field private nameText:Landroid/text/StaticLayout;

.field private final nameTextPaint:Landroid/text/TextPaint;

.field private final subscribersBackgroundDimPaint:Landroid/graphics/Paint;

.field private final subscribersBackgroundPaint:Landroid/graphics/Paint;

.field private subscribersBackgroundPaintBitmapHeight:I

.field private subscribersBackgroundPaintBitmapWidth:I

.field private subscribersBackgroundPaintMatrix:Landroid/graphics/Matrix;

.field private subscribersBackgroundPaintShader:Landroid/graphics/BitmapShader;

.field private subscribersColorSet:Z

.field private subscribersColorSetFromThumb:Z

.field private final subscribersDrawable:Landroid/graphics/drawable/Drawable;

.field private final subscribersStrokePaint:Landroid/graphics/Paint;

.field private final subscribersText:Lorg/telegram/ui/Components/Text;


# direct methods
.method public constructor <init>(ILorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLObject;)V
    .locals 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->nameTextPaint:Landroid/text/TextPaint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->subscribersStrokePaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->subscribersBackgroundPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->subscribersBackgroundDimPaint:Landroid/graphics/Paint;

    iput-object p2, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iput-object p3, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->chat:Lorg/telegram/tgnet/TLObject;

    new-instance v2, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock$3;

    invoke-direct {v2, p0, p2, p2}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock$3;-><init>(Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;Landroid/view/View;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    iput-object v2, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    new-array v2, v1, [Lorg/telegram/messenger/ImageReceiver;

    iput-object v2, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->avatarImageReceiver:[Lorg/telegram/messenger/ImageReceiver;

    new-instance v3, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v3, p2}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v3, p2}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    aget-object v3, v2, v4

    invoke-static {}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->avatarSize()I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->isCellAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->attach()V

    :cond_0
    new-array v1, v1, [Lorg/telegram/ui/Components/AvatarDrawable;

    iput-object v1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->avatarDrawable:[Lorg/telegram/ui/Components/AvatarDrawable;

    new-instance v3, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v3}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    aput-object v3, v1, v4

    invoke-virtual {v3, p1, p3}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLObject;)V

    aget-object p1, v2, v4

    aget-object v1, v1, v4

    invoke-virtual {p1, p3, v1}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    const/high16 p1, 0x41300000    # 11.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    instance-of p1, p3, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p1, :cond_1

    move-object p1, p3

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_0

    :cond_1
    instance-of p1, p3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p1, :cond_2

    move-object p1, p3

    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, ""

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    invoke-static {p1, v0, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    :goto_1
    iput-object p1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->name:Ljava/lang/CharSequence;

    iget-object p1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->subscribersStrokePaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-boolean v4, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->isLock:Z

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->mini_reply_user:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->subscribersDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p3}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->getSubscribersCount(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    :goto_2
    iput-object p1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->subscribersText:Lorg/telegram/ui/Components/Text;

    goto :goto_3

    :cond_3
    new-instance p1, Lorg/telegram/ui/Components/Text;

    invoke-direct {p0, p3}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->getSubscribersCount(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object p3

    const v0, 0x411547ae    # 9.33f

    invoke-direct {p1, p2, v0, p3}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    goto :goto_2

    :goto_3
    return-void
.end method

.method public constructor <init>(ILorg/telegram/ui/Cells/ChatMessageCell;[Lorg/telegram/tgnet/TLObject;I)V
    .locals 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->nameTextPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->subscribersStrokePaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->subscribersBackgroundPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->subscribersBackgroundDimPaint:Landroid/graphics/Paint;

    iput-object p2, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v0, 0x0

    aget-object v2, p3, v0

    iput-object v2, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->chat:Lorg/telegram/tgnet/TLObject;

    new-instance v2, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock$1;

    invoke-direct {v2, p0, p2, p2}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock$1;-><init>(Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;Landroid/view/View;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    iput-object v2, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    const/4 v2, 0x3

    new-array v3, v2, [Lorg/telegram/messenger/ImageReceiver;

    iput-object v3, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->avatarImageReceiver:[Lorg/telegram/messenger/ImageReceiver;

    new-array v3, v2, [Lorg/telegram/ui/Components/AvatarDrawable;

    iput-object v3, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->avatarDrawable:[Lorg/telegram/ui/Components/AvatarDrawable;

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->avatarImageReceiver:[Lorg/telegram/messenger/ImageReceiver;

    new-instance v4, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v4, p2}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    aput-object v4, v3, v0

    iget-object v3, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->avatarImageReceiver:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v3, v3, v0

    invoke-virtual {v3, p2}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    iget-object v3, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->avatarImageReceiver:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v3, v3, v0

    invoke-static {}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->avatarSize()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    iget-object v3, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->avatarDrawable:[Lorg/telegram/ui/Components/AvatarDrawable;

    new-instance v4, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v4}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    aput-object v4, v3, v0

    array-length v3, p3

    if-ge v0, v3, :cond_0

    aget-object v3, p3, v0

    if-eqz v3, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->avatarDrawable:[Lorg/telegram/ui/Components/AvatarDrawable;

    aget-object v4, v4, v0

    invoke-virtual {v4, p1, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLObject;)V

    iget-object v3, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->avatarImageReceiver:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v3, v3, v0

    aget-object v4, p3, v0

    iget-object v5, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->avatarDrawable:[Lorg/telegram/ui/Components/AvatarDrawable;

    aget-object v5, v5, v0

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_0
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v1}, Landroid/graphics/Paint;-><init>(I)V

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubble:I

    invoke-virtual {p2, v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getThemedColor(I)I

    move-result v4

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-virtual {p2, v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getThemedColor(I)I

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v5

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->avatarImageReceiver:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v5, v5, v0

    new-instance v6, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock$2;

    invoke-direct {v6, p0, v3, v4}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock$2;-><init>(Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;Landroid/graphics/Paint;I)V

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->isCellAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->attach()V

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->nameTextPaint:Landroid/text/TextPaint;

    const/high16 p3, 0x41300000    # 11.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget p1, p2, Lorg/telegram/ui/Cells/ChatMessageCell;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p1

    if-eqz p1, :cond_3

    sget p3, Lorg/telegram/messenger/R$string;->MoreSimilar:I

    goto :goto_2

    :cond_3
    sget p3, Lorg/telegram/messenger/R$string;->UnlockSimilar:I

    :goto_2
    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->name:Ljava/lang/CharSequence;

    iget-object p3, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->subscribersStrokePaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-boolean v1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->isLock:Z

    const/4 p3, 0x0

    if-eqz p1, :cond_4

    move-object p1, p3

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->mini_switch_lock:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_3
    iput-object p1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->subscribersDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->chat:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->getSubscribersCount(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    iput-object p3, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->subscribersText:Lorg/telegram/ui/Components/Text;

    goto :goto_4

    :cond_5
    new-instance p1, Lorg/telegram/ui/Components/Text;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "+"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object p3

    const p4, 0x411547ae    # 9.33f

    invoke-direct {p1, p2, p4, p3}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object p1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->subscribersText:Lorg/telegram/ui/Components/Text;

    :goto_4
    return-void
.end method

.method public static avatarSize()I
    .locals 1

    const/high16 v0, 0x42580000    # 54.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method private checkNameText(I)V
    .locals 11

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->nameText:Landroid/text/StaticLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->name:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->nameTextPaint:Landroid/text/TextPaint;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2, p1}, Lorg/telegram/messenger/MessageObject$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock$$ExternalSyntheticApiModelOutline0;->m(Landroid/text/StaticLayout$Builder;I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p1, v0}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock$$ExternalSyntheticApiModelOutline1;->m(Landroid/text/StaticLayout$Builder;Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    invoke-static {p1, v3}, Lorg/telegram/messenger/MessageObject$$ExternalSyntheticApiModelOutline1;->m(Landroid/text/StaticLayout$Builder;I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-static {p1, v0}, Lorg/telegram/messenger/MessageObject$$ExternalSyntheticApiModelOutline3;->m(Landroid/text/StaticLayout$Builder;Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject$$ExternalSyntheticApiModelOutline4;->m(Landroid/text/StaticLayout$Builder;)Landroid/text/StaticLayout;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->nameText:Landroid/text/StaticLayout;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->name:Ljava/lang/CharSequence;

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->nameTextPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v8, p1, v2

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v10}, Lorg/telegram/ui/Components/StaticLayoutEx;->createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;IIZ)Landroid/text/StaticLayout;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public static fillPath(Landroid/graphics/Path;IF)V
    .locals 7

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float v1, p1, v0

    add-float/2addr v1, p2

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->avatarSize()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-static {}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->avatarSize()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    const v1, 0x3ecccccd    # 0.4f

    mul-float v1, v1, p1

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    sub-float v3, p1, v1

    div-float/2addr v3, v0

    add-float/2addr v3, p2

    const/high16 v5, 0x428a0000    # 69.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v1, p1

    div-float/2addr v1, v0

    add-float/2addr v1, p2

    const/high16 v6, 0x429e0000    # 79.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2, v3, v5, v1, v6}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v2, v3, v1, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    const v1, 0x3eb33333    # 0.35f

    mul-float v1, v1, p1

    sub-float v3, p1, v1

    div-float/2addr v3, v0

    add-float/2addr v3, p2

    const/high16 v5, 0x42a60000    # 83.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr p1, v1

    div-float/2addr p1, v0

    add-float/2addr p2, p1

    const/high16 p1, 0x42b60000    # 91.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v2, v3, v5, p2, p1}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 p1, 0x40200000    # 2.5f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, v2, p2, p1, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method private getSubscribersCount(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;
    .locals 3

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    if-gt p1, v1, :cond_0

    return-object v2

    :cond_0
    invoke-static {p1, v2}, Lorg/telegram/messenger/LocaleController;->formatShortNumber(I[I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$User;->bot_active_users:I

    if-gt p1, v1, :cond_2

    return-object v2

    :cond_2
    invoke-static {p1, v2}, Lorg/telegram/messenger/LocaleController;->formatShortNumber(I[I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v2
.end method

.method public static height()I
    .locals 1

    const/high16 v0, 0x42c60000    # 99.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method


# virtual methods
.method public attach()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->avatarImageReceiver:[Lorg/telegram/messenger/ImageReceiver;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public detach()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->avatarImageReceiver:[Lorg/telegram/messenger/ImageReceiver;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;IF)V
    .locals 11

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v1, 0x3d99999a    # 0.075f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v0

    int-to-float v1, p2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    invoke-static {}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    invoke-virtual {p1, v0, v0, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->subscribersStrokePaint:Landroid/graphics/Paint;

    const v4, 0x402a3d71    # 2.66f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->subscribersStrokePaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubble:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->avatarImageReceiver:[Lorg/telegram/messenger/ImageReceiver;

    array-length v0, v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    :goto_0
    const/high16 v5, 0x41200000    # 10.0f

    if-ltz v0, :cond_1

    const/high16 v6, 0x40e00000    # 7.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->avatarImageReceiver:[Lorg/telegram/messenger/ImageReceiver;

    array-length v8, v8

    sub-int/2addr v8, v4

    mul-int v7, v7, v8

    int-to-float v7, v7

    div-float/2addr v7, v2

    sub-float v7, v3, v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    mul-int v6, v6, v0

    int-to-float v6, v6

    add-float/2addr v7, v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->avatarSize()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v2

    add-float/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->avatarImageReceiver:[Lorg/telegram/messenger/ImageReceiver;

    array-length v6, v6

    if-le v6, v4, :cond_0

    invoke-static {}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->avatarSize()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v2

    iget-object v8, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->subscribersStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v5, v6, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    iget-object v6, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->avatarImageReceiver:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v6, v6, v0

    invoke-static {}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->avatarSize()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v2

    sub-float/2addr v7, v8

    invoke-static {}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->avatarSize()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v2

    sub-float/2addr v5, v8

    invoke-static {}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->avatarSize()I

    move-result v8

    int-to-float v8, v8

    invoke-static {}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->avatarSize()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v6, v7, v5, v8, v9}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    iget-object v5, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->avatarImageReceiver:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v5, v5, v0

    invoke-virtual {v5, p3}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    iget-object v5, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->avatarImageReceiver:[Lorg/telegram/messenger/ImageReceiver;

    aget-object v5, v5, v0

    invoke-virtual {v5, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->subscribersText:Lorg/telegram/ui/Components/Text;

    if-eqz p3, :cond_d

    const/high16 v0, 0x42000000    # 32.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float p2, p2

    invoke-virtual {p3, p2}, Lorg/telegram/ui/Components/Text;->ellipsize(F)Lorg/telegram/ui/Components/Text;

    iget-object p2, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->subscribersDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 p3, 0x41000000    # 8.0f

    if-eqz p2, :cond_2

    const/high16 p2, 0x41880000    # 17.0f

    goto :goto_1

    :cond_2
    const/high16 p2, 0x41000000    # 8.0f

    :goto_1
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->subscribersText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Text;->getWidth()F

    move-result v0

    add-float/2addr p2, v0

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->avatarSize()I

    move-result v5

    add-int/2addr v0, v5

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v0, v6

    int-to-float v0, v0

    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    sub-float v7, v1, p2

    div-float/2addr v7, v2

    const v8, 0x416547ae    # 14.33f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    sub-float v8, v0, v8

    add-float/2addr v1, p2

    div-float/2addr v1, v2

    invoke-virtual {v6, v7, v8, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-boolean p2, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->subscribersColorSet:Z

    if-nez p2, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->isLock:Z

    if-eqz v0, :cond_3

    iget-object p2, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->subscribersBackgroundPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubble:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getThemedColor(I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getThemedColor(I)I

    move-result v1

    const v6, 0x3f59999a    # 0.85f

    invoke-static {v1, v6}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    :goto_2
    iput-boolean v4, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->subscribersColorSet:Z

    goto/16 :goto_c

    :cond_3
    const/4 v0, 0x0

    const v1, 0x3f733333    # 0.95f

    const v6, 0x3d4ccccd    # 0.05f

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x2

    if-nez p2, :cond_8

    iget-object p2, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->avatarImageReceiver:[Lorg/telegram/messenger/ImageReceiver;

    aget-object p2, p2, v8

    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getStaticThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    instance-of p2, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p2, :cond_8

    iget-object p2, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->avatarImageReceiver:[Lorg/telegram/messenger/ImageReceiver;

    aget-object p2, p2, v8

    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getStaticThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    :try_start_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    div-int/2addr v8, v9

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    sub-int/2addr v10, v9

    invoke-virtual {p2, v8, v10}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p2

    new-array v7, v7, [F

    invoke-static {p2, v7}, Landroidx/core/graphics/ColorUtils;->colorToHSL(I[F)V

    aget p2, v7, v4

    cmpg-float v6, p2, v6

    if-lez v6, :cond_6

    cmpl-float p2, p2, v1

    if-gez p2, :cond_6

    aget p2, v7, v9

    const v1, 0x3ca3d70a    # 0.02f

    cmpg-float v1, p2, v1

    if-lez v1, :cond_6

    const v1, 0x3f7ae148    # 0.98f

    cmpl-float p2, p2, v1

    if-ltz p2, :cond_4

    goto :goto_4

    :cond_4
    const/high16 p2, 0x3e800000    # 0.25f

    aput p2, v7, v4

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result p2

    if-eqz p2, :cond_5

    const p2, 0x3eb33333    # 0.35f

    goto :goto_3

    :cond_5
    const p2, 0x3f266666    # 0.65f

    :goto_3
    aput p2, v7, v9

    goto :goto_6

    :catch_0
    move-exception p2

    goto :goto_7

    :cond_6
    :goto_4
    aput v0, v7, v4

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result p2

    if-eqz p2, :cond_7

    const p2, 0x3ec28f5c    # 0.38f

    goto :goto_5

    :cond_7
    const p2, 0x3f333333    # 0.7f

    :goto_5
    aput p2, v7, v9

    :goto_6
    iget-object p2, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->subscribersBackgroundPaint:Landroid/graphics/Paint;

    invoke-static {v7}, Landroidx/core/graphics/ColorUtils;->HSLToColor([F)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :goto_7
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_8
    iget-boolean p2, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->subscribersColorSet:Z

    if-nez p2, :cond_b

    iget-boolean p2, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->subscribersColorSetFromThumb:Z

    if-nez p2, :cond_b

    :try_start_1
    iget-object p2, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->avatarDrawable:[Lorg/telegram/ui/Components/AvatarDrawable;

    aget-object p2, p2, v8

    invoke-virtual {p2}, Lorg/telegram/ui/Components/AvatarDrawable;->getColor()I

    move-result p2

    iget-object v10, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->avatarDrawable:[Lorg/telegram/ui/Components/AvatarDrawable;

    aget-object v8, v10, v8

    invoke-virtual {v8}, Lorg/telegram/ui/Components/AvatarDrawable;->getColor2()I

    move-result v8

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-static {p2, v8, v10}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p2

    new-array v7, v7, [F

    invoke-static {p2, v7}, Landroidx/core/graphics/ColorUtils;->colorToHSL(I[F)V

    aget p2, v7, v4

    cmpg-float v6, p2, v6

    if-lez v6, :cond_a

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_9

    goto :goto_8

    :cond_9
    const v1, 0x3d75c28f    # 0.06f

    sub-float/2addr p2, v1

    const v1, 0x3ecccccd    # 0.4f

    invoke-static {p2, v1, v0}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p2

    aput p2, v7, v4

    aget p2, v7, v9

    const v0, 0x3da3d70a    # 0.08f

    sub-float/2addr p2, v0

    const v0, 0x3e4ccccd    # 0.2f

    invoke-static {p2, v10, v0}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p2

    aput p2, v7, v9

    goto :goto_9

    :catch_1
    move-exception p2

    goto :goto_a

    :cond_a
    :goto_8
    aget p2, v7, v9

    const v0, 0x3dcccccd    # 0.1f

    sub-float/2addr p2, v0

    const v0, 0x3f19999a    # 0.6f

    const v1, 0x3e99999a    # 0.3f

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p2

    aput p2, v7, v9

    :goto_9
    iget-object p2, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->subscribersBackgroundPaint:Landroid/graphics/Paint;

    invoke-static {v7}, Landroidx/core/graphics/ColorUtils;->HSLToColor([F)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_b

    :goto_a
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_b
    iput-boolean v4, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->subscribersColorSetFromThumb:Z

    :cond_b
    :goto_c
    iget-object p2, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->subscribersBackgroundPaintShader:Landroid/graphics/BitmapShader;

    if-eqz p2, :cond_c

    iget-object p2, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->subscribersBackgroundPaintMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    iget-object p2, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->subscribersBackgroundPaintMatrix:Landroid/graphics/Matrix;

    invoke-static {}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->avatarSize()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->subscribersBackgroundPaintBitmapWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->avatarSize()I

    move-result v1

    int-to-float v1, v1

    iget v4, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->subscribersBackgroundPaintBitmapHeight:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object p2, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->subscribersBackgroundPaintMatrix:Landroid/graphics/Matrix;

    invoke-static {}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->avatarSize()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    sub-float/2addr v3, v0

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->avatarSize()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v1, v4

    invoke-virtual {p2, v3, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p2, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->subscribersBackgroundPaintShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->subscribersBackgroundPaintMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->subscribersBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->subscribersBackgroundDimPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_d

    :cond_c
    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->subscribersBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_d
    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->subscribersStrokePaint:Landroid/graphics/Paint;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->subscribersStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_d
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public drawText(Landroid/graphics/Canvas;IF)V
    .locals 10

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v1, 0x3d99999a    # 0.075f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v0

    int-to-float v1, p2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    invoke-static {}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    invoke-virtual {p1, v0, v0, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-direct {p0, p2}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->checkNameText(I)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->nameText:Landroid/text/StaticLayout;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->nameText:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    sub-int v0, p2, v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    const v3, 0x4284a8f6    # 66.33f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->avatarImageReceiver:[Lorg/telegram/messenger/ImageReceiver;

    array-length v0, v0

    const/4 v3, 0x1

    if-gt v0, v3, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->nameTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageTextIn:I

    :goto_0
    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->nameTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->nameTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p3

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->nameText:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->subscribersText:Lorg/telegram/ui/Components/Text;

    if-eqz v0, :cond_7

    const/high16 v3, 0x42000000    # 32.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr p2, v3

    int-to-float p2, p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/Text;->ellipsize(F)Lorg/telegram/ui/Components/Text;

    iget-object p2, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->subscribersDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_2

    const/high16 p2, 0x41880000    # 17.0f

    goto :goto_2

    :cond_2
    const/high16 p2, 0x41000000    # 8.0f

    :goto_2
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->subscribersText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Text;->getWidth()F

    move-result v0

    add-float/2addr p2, v0

    sub-float/2addr v1, p2

    div-float/2addr v1, v2

    const p2, 0x408547ae    # 4.165f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {}, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->avatarSize()I

    move-result v0

    add-int/2addr p2, v0

    int-to-float v6, p2

    iget-object p2, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->subscribersDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->isLock:Z

    const/4 v3, 0x0

    const v4, 0x3faa3d71    # 1.33f

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->subscribersText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Text;->getWidth()F

    move-result v0

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v0, v5

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    add-float/2addr v0, v1

    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v0, v7

    float-to-int v0, v0

    iget-object v7, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->subscribersDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v2

    const/high16 v8, 0x3f200000    # 0.625f

    mul-float v7, v7, v8

    sub-float v7, v6, v7

    float-to-int v7, v7

    iget-boolean v9, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->isLock:Z

    if-eqz v9, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->subscribersText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Text;->getWidth()F

    move-result v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    :cond_4
    add-float/2addr v3, v1

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->subscribersDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v8

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->subscribersDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    mul-float v4, v4, v8

    add-float/2addr v4, v6

    float-to-int v2, v4

    invoke-virtual {p2, v0, v7, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p2, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->subscribersDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->subscribersText:Lorg/telegram/ui/Components/Text;

    iget-boolean p2, p0, Lorg/telegram/ui/Cells/ChannelRecommendationsCell$ChannelBlock;->isLock:Z

    if-nez p2, :cond_6

    const p2, 0x414a8f5c    # 12.66f

    goto :goto_4

    :cond_6
    const/high16 p2, 0x40800000    # 4.0f

    :goto_4
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    add-float v5, v1, p2

    const/4 v7, -0x1

    move-object v4, p1

    move v8, p3

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
