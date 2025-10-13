.class Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1;
.super Lorg/telegram/ui/Cells/ChatMessageCell;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/INavigationLayout;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final color1:Lorg/telegram/ui/Components/AnimatedColor;

.field private final color2:Lorg/telegram/ui/Components/AnimatedColor;

.field private gestureDetector:Landroid/view/GestureDetector;

.field final synthetic this$0:Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;Landroid/content/Context;IZLorg/telegram/messenger/ChatMessageSharedResources;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/content/Context;I)V
    .locals 7

    iput-object p1, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1;->this$0:Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;

    iput-object p7, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1;->val$context:Landroid/content/Context;

    iput p8, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1;->val$type:I

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Cells/ChatMessageCell;-><init>(Landroid/content/Context;IZLorg/telegram/messenger/ChatMessageSharedResources;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    new-instance p1, Landroid/view/GestureDetector;

    new-instance p2, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1$1;-><init>(Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1;)V

    invoke-direct {p1, p7, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1;->gestureDetector:Landroid/view/GestureDetector;

    new-instance p1, Lorg/telegram/ui/Components/AnimatedColor;

    sget-object p8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xb4

    move-object v0, p1

    move-object v1, p0

    move-object v6, p8

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedColor;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1;->color1:Lorg/telegram/ui/Components/AnimatedColor;

    new-instance p1, Lorg/telegram/ui/Components/AnimatedColor;

    const-wide/16 p4, 0x0

    const-wide/16 p6, 0xb4

    move-object p2, p1

    move-object p3, p0

    invoke-direct/range {p2 .. p8}, Lorg/telegram/ui/Components/AnimatedColor;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1;->color2:Lorg/telegram/ui/Components/AnimatedColor;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->overrideLinkColor:I

    if-ltz v0, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->overrideLinkColor:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_3

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->peerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesController$PeerColors;->getColor(I)Lorg/telegram/messenger/MessagesController$PeerColor;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor1()I

    move-result v0

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[I

    invoke-static {v0}, Lorg/telegram/ui/Components/AvatarDrawable;->getPeerColorIndex(I)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getThemedColor(I)I

    move-result v1

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background2:[I

    invoke-static {v0}, Lorg/telegram/ui/Components/AvatarDrawable;->getPeerColorIndex(I)I

    move-result v0

    aget v0, v2, v0

    :goto_1
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getThemedColor(I)I

    move-result v0

    goto :goto_2

    :cond_2
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[I

    int-to-long v2, v0

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v0

    aget v0, v1, v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getThemedColor(I)I

    move-result v1

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background2:[I

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v2

    aget v0, v0, v2

    goto :goto_1

    :cond_3
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[I

    int-to-long v2, v0

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v0

    aget v0, v1, v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getThemedColor(I)I

    move-result v1

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background2:[I

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v2

    aget v0, v0, v2

    goto :goto_1

    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Cells/ChatMessageCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v3, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1;->color1:Lorg/telegram/ui/Components/AnimatedColor;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/AnimatedColor;->set(I)I

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1;->color2:Lorg/telegram/ui/Components/AnimatedColor;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/AnimatedColor;->set(I)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setColor(II)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1;->color1:Lorg/telegram/ui/Components/AnimatedColor;

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AvatarDrawable;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedColor;->set(I)I

    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1;->color2:Lorg/telegram/ui/Components/AnimatedColor;

    iget-object v1, p0, Lorg/telegram/ui/Cells/ChatMessageCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AvatarDrawable;->getColor2()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedColor;->set(I)I

    :goto_3
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAvatarImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAvatarImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAvatarImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAvatarImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAvatarImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAvatarImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAvatarImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAvatarImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAvatarImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getAvatarImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    goto :goto_4

    :cond_5
    iget v0, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1;->val$type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    :cond_6
    :goto_4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1;->this$0:Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->access$100(Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell$1;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method
