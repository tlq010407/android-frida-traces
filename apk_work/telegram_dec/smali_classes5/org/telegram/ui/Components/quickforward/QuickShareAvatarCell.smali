.class Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private alphaAnimator:Landroid/animation/ValueAnimator;

.field private alphaFactor:F

.field private alphaValue:Z

.field private final avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private bgX1:F

.field private bgY:F

.field private blurredAvatarDrawable:Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;

.field private blurredTextDrawable:Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;

.field private blurredTextPaint:Landroid/graphics/Paint;

.field private final cell:Lorg/telegram/ui/Cells/ChatMessageCell;

.field private final currentAccount:I

.field public final dialogId:J

.field private final imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private final parent:Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;

.field private selectedAnimator:Landroid/animation/ValueAnimator;

.field private selectedFactor:F

.field private selectedValue:Z

.field private textLayout:Landroid/text/StaticLayout;


# direct methods
.method public static synthetic $r8$lambda$Cx-JLeOJYK-ycqBu_k8MV0tPdIM(Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;Landroid/graphics/Canvas;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->renderText(Landroid/graphics/Canvas;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$EZcj99kvauUwkrI2WYp0--puQ3E(Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;Landroid/graphics/Canvas;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->renderAvatar(Landroid/graphics/Canvas;I)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->currentAccount:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->alphaFactor:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->alphaValue:Z

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->selectedFactor:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->selectedValue:Z

    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, p1, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->parent:Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iput-object p1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->parent:Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;

    iget-object p1, p1, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iput-object p1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iput-wide p2, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->dialogId:J

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->setDialog(Lorg/telegram/ui/Cells/ChatMessageCell;J)V

    return-void
.end method

.method private drawAvatarImpl(Landroid/graphics/Canvas;FFFF)V
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sub-float/2addr p2, p4

    sub-float/2addr p3, p4

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    sget p2, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Sizes;->AVATAR_RADIUS:I

    int-to-float p2, p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    div-float p2, p4, p2

    sget p3, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Sizes;->AVATAR_RADIUS:I

    int-to-float p3, p3

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p4, p3

    invoke-virtual {p1, p2, p4}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object p2, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget p3, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->alphaFactor:F

    const/high16 p4, 0x3e800000    # 0.25f

    mul-float p3, p3, p4

    const/high16 p4, 0x3f400000    # 0.75f

    add-float/2addr p3, p4

    mul-float p3, p3, p5

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    iget-object p2, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawTextImpl(Landroid/graphics/Canvas;FFF)V
    .locals 10

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    const/high16 v1, 0x41a80000    # 21.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, p2

    sget v5, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Sizes;->TEXT_PADDING_INTERNAL:I

    int-to-float v5, v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, p3

    invoke-virtual {v0, p2, p3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v4, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->hasGradientService()Z

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->blurredTextPaint:Landroid/graphics/Paint;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/graphics/Paint;->getAlpha()I

    move-result v6

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float v7, v7, p4

    float-to-int v7, v7

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1, v0, v2, v2, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1

    :cond_0
    iget-object v6, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v8, v7, Landroid/graphics/Point;->x:I

    iget v7, v7, Landroid/graphics/Point;->y:I

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v7, v9, v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->applyServiceShaderMatrix(IIFF)V

    iget-object v6, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->cell:Lorg/telegram/ui/Cells/ChatMessageCell;

    const-string v7, "paintChatActionBackground"

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Paint;->getAlpha()I

    move-result v7

    if-eqz v4, :cond_1

    int-to-float v8, v7

    goto :goto_0

    :cond_1
    const v8, 0x43658000    # 229.5f

    :goto_0
    mul-float v8, v8, p4

    float-to-int v8, v8

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1, v0, v2, v2, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_1
    if-nez v4, :cond_2

    if-eqz v5, :cond_3

    :cond_2
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v4

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    int-to-float v6, v4

    mul-float v6, v6, p4

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sget v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Sizes;->TEXT_PADDING_INTERNAL:I

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v3

    add-float/2addr p3, v0

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p2, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {p2}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    move-result p2

    iget-object p3, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {p3}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object p3

    int-to-float v0, p2

    mul-float v0, v0, p4

    float-to-int p4, v0

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p3, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {p3, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    iget-object p3, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {p3}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private fixX(FFFF)F
    .locals 6

    const/high16 v0, 0x40000000    # 2.0f

    div-float v1, p2, v0

    sub-float v2, p1, v1

    add-float v3, p1, v1

    sub-float v4, p4, p3

    cmpl-float v5, p2, v4

    if-lez v5, :cond_1

    add-float p1, p3, p4

    div-float/2addr p1, v0

    sub-float/2addr p2, v4

    sub-float/2addr p3, v2

    const/4 v1, 0x0

    invoke-static {v1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    sub-float/2addr v3, p4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result p4

    add-float v1, p3, p4

    const v2, 0x3dcccccd    # 0.1f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    return p1

    :cond_0
    sub-float/2addr p3, p4

    div-float/2addr p3, v1

    div-float/2addr p2, v0

    mul-float p2, p2, p3

    add-float/2addr p1, p2

    return p1

    :cond_1
    cmpg-float p2, v2, p3

    if-gez p2, :cond_2

    add-float/2addr p3, v1

    return p3

    :cond_2
    cmpl-float p2, v3, p4

    if-lez p2, :cond_3

    sub-float/2addr p4, v1

    return p4

    :cond_3
    return p1
.end method

.method private renderAvatar(Landroid/graphics/Canvas;I)V
    .locals 7

    sget v0, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Sizes;->AVATAR_RADIUS:I

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v5, v0

    int-to-float p2, p2

    const/high16 v0, 0x437f0000    # 255.0f

    div-float v6, p2, v0

    move-object v1, p0

    move-object v2, p1

    move v3, v5

    move v4, v5

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->drawAvatarImpl(Landroid/graphics/Canvas;FFFF)V

    return-void
.end method

.method private renderText(Landroid/graphics/Canvas;I)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->bgX1:F

    neg-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->bgY:F

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->bgX1:F

    iget v1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->bgY:F

    int-to-float p2, p2

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr p2, v2

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->drawTextImpl(Landroid/graphics/Canvas;FFF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private setDialog(Lorg/telegram/ui/Cells/ChatMessageCell;J)V
    .locals 15

    move-object v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    invoke-static/range {p2 .. p3}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_2

    iget v1, v0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v13

    iget-object v1, v0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v3, v0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->currentAccount:I

    invoke-virtual {v1, v3, v13}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$User;)V

    invoke-static {v13}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lorg/telegram/messenger/R$string;->SavedMessages:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    iget-object v4, v0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v9, v0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v10, 0x0

    invoke-virtual/range {v4 .. v14}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_1

    :cond_0
    if-eqz v13, :cond_1

    iget-object v1, v13, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v3, v0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v13, v3}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    move-object v1, v2

    goto :goto_1

    :cond_2
    iget v1, v0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    move-wide/from16 v3, p2

    neg-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :cond_3
    iget-object v3, v0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget v4, v0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->currentAccount:I

    invoke-virtual {v3, v4, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$Chat;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v4, v0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v3, v1, v4}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :goto_1
    iget-object v2, v0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    sget v3, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Sizes;->AVATAR:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    sget v3, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Sizes;->AVATAR:I

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sget v4, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Sizes;->AVATAR:I

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    const-string v2, "paintChatActionText"

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v2

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    sget v3, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Sizes;->TEXT_PADDING_INTERNAL:I

    mul-int/lit8 v3, v3, 0x2

    sget v4, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Sizes;->TEXT_PADDING_EXTERNAL:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v3

    new-instance v7, Landroid/text/TextPaint;

    invoke-direct {v7, v2}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    int-to-float v2, v4

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1, v7, v2, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v7, v6, v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v8, v1

    new-instance v1, Landroid/text/StaticLayout;

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, v0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->textLayout:Landroid/text/StaticLayout;

    :cond_4
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;FFFFFFFFZ)V
    .locals 11

    move-object v6, p0

    move-object v7, p1

    move/from16 v8, p6

    move/from16 v9, p7

    const/high16 v10, 0x40000000    # 2.0f

    if-nez p10, :cond_0

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget v1, v6, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->selectedFactor:F

    mul-float v0, v0, v1

    add-float v4, p8, v0

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p6

    move/from16 v3, p7

    move/from16 v5, p9

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->drawAvatarImpl(Landroid/graphics/Canvas;FFFF)V

    :cond_0
    iget v0, v6, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->selectedFactor:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    iget-object v1, v6, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->textLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_3

    const v1, 0x3e19999a    # 0.15f

    mul-float v0, v0, v1

    const v1, 0x3f59999a    # 0.85f

    add-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v0, v0, v8, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget v0, v6, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->selectedFactor:F

    mul-float v0, v0, p9

    iget-object v1, v6, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result v1

    sget v2, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Sizes;->TEXT_PADDING_INTERNAL:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    move v2, p4

    move/from16 v3, p5

    invoke-direct {p0, v8, v1, p4, v3}, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->fixX(FFFF)F

    move-result v2

    move v3, p2

    move v4, p3

    invoke-direct {p0, v2, v1, p2, p3}, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->fixX(FFFF)F

    move-result v2

    div-float v3, v1, v10

    sub-float/2addr v2, v3

    iput v2, v6, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->bgX1:F

    const/high16 v2, 0x42680000    # 58.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v9, v2

    iput v2, v6, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->bgY:F

    iget-object v2, v6, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->blurredTextDrawable:Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;

    const/high16 v3, 0x41a80000    # 21.0f

    if-nez v2, :cond_1

    iget-object v2, v6, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->parent:Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v6, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->parent:Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;->getBlurBitmapPaint()Landroid/graphics/Paint;

    move-result-object v2

    iput-object v2, v6, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->blurredTextPaint:Landroid/graphics/Paint;

    new-instance v2, Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;

    new-instance v4, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;)V

    invoke-direct {v2, v4}, Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;-><init>(Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable$DrawRunnable;)V

    iput-object v2, v6, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->blurredTextDrawable:Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;

    float-to-int v4, v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sget v8, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Sizes;->TEXT_BLUR_RADIUS:I

    int-to-float v8, v8

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    const/high16 v9, 0x40400000    # 3.0f

    invoke-virtual {v2, v4, v5, v8, v9}, Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;->render(IIIF)V

    :cond_1
    iget-object v2, v6, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->blurredTextDrawable:Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;

    if-eqz v2, :cond_2

    iget v4, v6, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->bgX1:F

    float-to-int v5, v4

    iget v8, v6, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->bgY:F

    float-to-int v9, v8

    add-float/2addr v4, v1

    float-to-int v1, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v8, v3

    float-to-int v3, v8

    invoke-virtual {v2, v5, v9, v1, v3}, Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;->setBounds(IIII)V

    iget-object v1, v6, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->blurredTextDrawable:Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v0, v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;->setAlpha(I)V

    iget-object v0, v6, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->blurredTextDrawable:Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    return-void
.end method

.method public drawBlurredAvatar(Landroid/graphics/Canvas;FFFF)V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->blurredAvatarDrawable:Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;

    new-instance v1, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;)V

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;-><init>(Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable$DrawRunnable;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->blurredAvatarDrawable:Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;

    sget v1, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Sizes;->AVATAR:I

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sget v2, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Sizes;->AVATAR:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget v3, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Sizes;->BLUR_RADIUS:I

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x40800000    # 4.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;->render(IIIF)V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sub-float/2addr p2, p4

    sub-float/2addr p3, p4

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    sget p2, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Sizes;->AVATAR_RADIUS:I

    int-to-float p2, p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    div-float p2, p4, p2

    sget p3, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Sizes;->AVATAR_RADIUS:I

    int-to-float p3, p3

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p4, p3

    invoke-virtual {p1, p2, p4}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object p2, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->blurredAvatarDrawable:Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;

    const/high16 p3, 0x437f0000    # 255.0f

    mul-float p5, p5, p3

    float-to-int p3, p5

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;->setAlpha(I)V

    iget-object p2, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->blurredAvatarDrawable:Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->selectedAnimator:Landroid/animation/ValueAnimator;

    if-ne p1, v0, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->selectedFactor:F

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->alphaAnimator:Landroid/animation/ValueAnimator;

    if-ne p1, v0, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->alphaFactor:F

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->parent:Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public recycle()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->blurredTextDrawable:Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;->recycle()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->blurredAvatarDrawable:Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/quickforward/BlurVisibilityDrawable;->recycle()V

    :cond_1
    return-void
.end method

.method public setFullVisible(ZZ)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->alphaValue:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->alphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iput-boolean p1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->alphaValue:Z

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_3

    iget p2, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->alphaFactor:F

    if-eqz p1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_2
    const/4 p1, 0x2

    new-array p1, p1, [F

    const/4 v1, 0x0

    aput p2, p1, v1

    const/4 p2, 0x1

    aput v0, p1, p2

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->alphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xb4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->alphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->alphaAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Interpolators;->DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->alphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_4
    iput v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->alphaFactor:F

    iget-object p1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->parent:Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :goto_0
    return-void
.end method

.method public setSelected(ZZ)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->selectedValue:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->selectedAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iput-boolean p1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->selectedValue:Z

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_3

    iget p2, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->selectedFactor:F

    if-eqz p1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_2
    const/4 p1, 0x2

    new-array p1, p1, [F

    const/4 v1, 0x0

    aput p2, p1, v1

    const/4 p2, 0x1

    aput v0, p1, p2

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->selectedAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xb4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->selectedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->selectedAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable$Interpolators;->DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->selectedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_4
    iput v0, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->selectedFactor:F

    iget-object p1, p0, Lorg/telegram/ui/Components/quickforward/QuickShareAvatarCell;->parent:Lorg/telegram/ui/Components/quickforward/QuickShareSelectorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :goto_0
    return-void
.end method
