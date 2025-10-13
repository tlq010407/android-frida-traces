.class public Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/AttachableDrawable;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/bots/SetupEmojiStatusSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserEmojiStatusDrawable"
.end annotation


# instance fields
.field private final animatedSwap:Lorg/telegram/ui/Components/AnimatedFloat;

.field private attached:Z

.field private final backgroundPaint:Landroid/graphics/Paint;

.field private final backgroundPaint2:Landroid/graphics/Paint;

.field private currentStatus:I

.field private final emojis:[Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

.field private final highlight:Z

.field private final rect:Landroid/graphics/RectF;

.field private final statusImageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private final text:Lorg/telegram/ui/Components/Text;

.field private final userImageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private view:Landroid/view/View;

.field private waitingForStatuses:Z


# direct methods
.method public static synthetic $r8$lambda$yOB-kabJzM8U06bV60Bju_lf0wk(Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->lambda$setRandomStatus$0()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 11

    .line 0
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->backgroundPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->backgroundPaint2:Landroid/graphics/Paint;

    new-instance v3, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v3}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->userImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance v4, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v4}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->statusImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iput v1, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->currentStatus:I

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iput-object v1, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->emojis:[Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->rect:Landroid/graphics/RectF;

    new-instance v1, Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v5, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;)V

    sget-object v10, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x140

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Ljava/lang/Runnable;JJLandroid/animation/TimeInterpolator;)V

    iput-object v1, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->animatedSwap:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->highlight:Z

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    const v0, 0x40151eb8    # 2.33f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, -0x1000000

    const v5, 0x3e3851ec    # 0.18f

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v1, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v3, p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    invoke-virtual {p0}, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->setRandomStatus()V

    new-instance v0, Lorg/telegram/ui/Components/Text;

    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p1

    const/high16 v1, 0x41600000    # 14.0f

    invoke-direct {v0, p1, v1}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;F)V

    iput-object v0, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->text:Lorg/telegram/ui/Components/Text;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 18

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->backgroundPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, v0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->backgroundPaint2:Landroid/graphics/Paint;

    new-instance v6, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v6}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v6, v0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->userImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance v7, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v7}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v7, v0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->statusImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iput v4, v0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->currentStatus:I

    const/4 v8, 0x2

    new-array v8, v8, [Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iput-object v8, v0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->emojis:[Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    iput-object v8, v0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->rect:Landroid/graphics/RectF;

    new-instance v8, Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v10, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable$$ExternalSyntheticLambda1;

    invoke-direct {v10, v0}, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;)V

    sget-object v15, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x140

    move-object v9, v8

    invoke-direct/range {v9 .. v15}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Ljava/lang/Runnable;JJLandroid/animation/TimeInterpolator;)V

    iput-object v8, v0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->animatedSwap:Lorg/telegram/ui/Components/AnimatedFloat;

    iput-boolean v4, v0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->highlight:Z

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    const v3, 0x40151eb8    # 2.33f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const/high16 v8, -0x1000000

    const v9, 0x3e3851ec    # 0.18f

    invoke-static {v8, v9}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v5, v3, v9, v4, v8}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    new-instance v3, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v3}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v6, v1, v3}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v6, v3}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v4, 0x78

    invoke-static {v3, v4}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const v6, 0x3eb33333    # 0.35f

    invoke-static {v4, v5, v6}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Ljava/util/ArrayList;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v12

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v8

    invoke-static {v3, v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v10

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v9, "120_120"

    const-string v11, "120_120"

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v7 .. v17}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    new-instance v2, Lorg/telegram/ui/Components/Text;

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    const/high16 v3, 0x41600000    # 14.0f

    invoke-direct {v2, v1, v3}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;F)V

    iput-object v2, v0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->text:Lorg/telegram/ui/Components/Text;

    return-void
.end method

.method private synthetic lambda$setRandomStatus$0()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->attached:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->setRandomStatus()V

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I

    if-ne p1, p2, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->waitingForStatuses:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->attached:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->waitingForStatuses:Z

    invoke-virtual {p0}, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->setRandomStatus()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-boolean v2, v0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->highlight:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x30

    goto :goto_0

    :cond_0
    const/16 v2, 0x1c

    :goto_0
    add-int/lit8 v2, v2, 0x26

    int-to-float v2, v2

    const v3, 0x40d51eb8    # 6.66f

    add-float/2addr v2, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->text:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v8, 0x42000000    # 32.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    sub-float/2addr v5, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v3, v6

    sub-float/2addr v9, v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v3

    invoke-virtual {v4, v5, v9, v6, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->rect:Landroid/graphics/RectF;

    iget-object v2, v0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->userImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, v0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->rect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v3, v2, v4, v5}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->userImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v7}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    iget-object v1, v0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->text:Lorg/telegram/ui/Components/Text;

    iget-object v2, v0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    const/high16 v3, 0x42100000    # 36.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v2

    iget-object v2, v0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    iget-boolean v1, v0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->highlight:Z

    const/high16 v2, 0x41c00000    # 24.0f

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    const v3, 0x41b547ae    # 22.66f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->backgroundPaint2:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->statusImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v1, v4

    iget-object v4, v0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v4, v3

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v1, v4, v3, v5}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->statusImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v7}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    goto/16 :goto_3

    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->animatedSwap:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v3, v0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->currentStatus:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v3, v0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->rect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    const v4, 0x41f547ae    # 30.66f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v4, v6

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v3, 0x437f0000    # 255.0f

    const v4, 0x3f19999a    # 0.6f

    const v6, 0x3ecccccd    # 0.4f

    const/high16 v8, 0x41100000    # 9.0f

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    const/4 v13, 0x0

    cmpg-float v14, v1, v11

    if-gez v14, :cond_3

    iget-object v14, v0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->emojis:[Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    aget-object v14, v14, v13

    if-eqz v14, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v15, v0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->currentStatus:I

    if-nez v15, :cond_2

    const/4 v15, -0x1

    goto :goto_1

    :cond_2
    const/4 v15, 0x1

    :goto_1
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    mul-int v15, v15, v16

    int-to-float v15, v15

    mul-float v15, v15, v1

    invoke-virtual {v7, v10, v15}, Landroid/graphics/Canvas;->translate(FF)V

    sub-float v15, v11, v1

    mul-float v16, v15, v6

    add-float v9, v16, v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v7, v9, v9, v4, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v14, v13, v13, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    mul-float v15, v15, v3

    float-to-int v4, v15

    invoke-virtual {v14, v4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setAlpha(I)V

    invoke-virtual {v14, v7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    cmpl-float v4, v1, v10

    if-lez v4, :cond_5

    iget-object v4, v0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->emojis:[Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    aget-object v4, v4, v12

    if-eqz v4, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v6, v0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->currentStatus:I

    if-ne v6, v12, :cond_4

    const/4 v9, -0x1

    goto :goto_2

    :cond_4
    const/4 v9, 0x1

    :goto_2
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    mul-int v9, v9, v6

    int-to-float v6, v9

    sub-float/2addr v11, v1

    mul-float v6, v6, v11

    invoke-virtual {v7, v10, v6}, Landroid/graphics/Canvas;->translate(FF)V

    const v6, 0x3ecccccd    # 0.4f

    mul-float v6, v6, v1

    const v8, 0x3f19999a    # 0.6f

    add-float/2addr v6, v8

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7, v6, v6, v8, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v4, v13, v13, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    mul-float v1, v1, v3

    float-to-int v1, v1

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setAlpha(I)V

    invoke-virtual {v4, v7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_3
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public onAttachedToWindow(Lorg/telegram/messenger/ImageReceiver;)V
    .locals 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->attached:Z

    iget-object v0, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->userImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    iget-object v0, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->statusImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->recentEmojiStatusesUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v0, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->emojis:[Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->emojis:[Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    aget-object p1, v0, p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->view:Landroid/view/View;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onDetachedFromWindow(Lorg/telegram/messenger/ImageReceiver;)V
    .locals 2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->attached:Z

    iget-object v0, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->userImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    iget-object v0, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->statusImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->recentEmojiStatusesUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    iget-object v0, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->emojis:[Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->view:Landroid/view/View;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->emojis:[Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->view:Landroid/view/View;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setParent(Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->view:Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->statusImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->userImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    return-void
.end method

.method public setRandomStatus()V
    .locals 6

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmojiDefaultStatuses;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmojiDefaultStatuses;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    iget v2, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->currentStatus:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->currentStatus:I

    iget-object v2, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->emojis:[Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    aget-object v1, v2, v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->view:Landroid/view/View;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->emojis:[Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget v2, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->currentStatus:I

    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const/16 v4, 0x9

    invoke-static {v3, v4, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IILorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v0

    aput-object v0, v1, v2

    iget-object v0, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->emojis:[Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget v1, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->currentStatus:I

    aget-object v0, v0, v1

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-boolean v0, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->attached:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->emojis:[Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget v1, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->currentStatus:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    :cond_2
    new-instance v0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;)V

    const-wide/16 v1, 0x9c4

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    :cond_3
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/bots/SetupEmojiStatusSheet$UserEmojiStatusDrawable;->waitingForStatuses:Z

    return-void
.end method
