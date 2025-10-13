.class public Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Sender"
.end annotation


# instance fields
.field public final animatedAnonymous:Lorg/telegram/ui/Components/AnimatedFloat;

.field public final animatedPosition:Lorg/telegram/ui/Components/AnimatedFloat;

.field public final animatedScale:Lorg/telegram/ui/Components/AnimatedFloat;

.field public anonymous:Z

.field public final anonymousAvatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field public final avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field public final bounce:Lorg/telegram/ui/Components/ButtonBounce;

.field public final clickBounds:Landroid/graphics/RectF;

.field public did:J

.field public final imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field public index:I

.field public final my:Z

.field public starsText:Lorg/telegram/ui/Components/Text;

.field public text:Lorg/telegram/ui/Components/Text;

.field final synthetic this$1:Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;ZJ)V
    .locals 9

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->this$1:Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->clickBounds:Landroid/graphics/RectF;

    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x258

    move-object v1, v0

    move-object v2, p1

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->animatedPosition:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v5, 0xc8

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->animatedScale:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v5, 0x15e

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->animatedAnonymous:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance v1, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v1}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    new-instance v2, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v2}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->anonymousAvatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    new-instance v3, Lorg/telegram/ui/Components/ButtonBounce;

    invoke-direct {v3, p1}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    iput-object v3, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    iput-boolean p2, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->my:Z

    iput-wide p3, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->did:J

    const-wide/16 v3, 0x0

    cmp-long p2, p3, v3

    iget-object p1, p1, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->this$0:Lorg/telegram/ui/Stars/StarsReactionsSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarsReactionsSheet;->access$600(Lorg/telegram/ui/Stars/StarsReactionsSheet;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    if-ltz p2, :cond_0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getForcedFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    :goto_0
    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_0
    neg-long p2, p3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p2, ""

    goto :goto_1

    :cond_1
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    goto :goto_0

    :goto_2
    const/high16 p1, 0x42600000    # 56.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeWithOldImage(Z)V

    const/16 p1, 0x15

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundGray:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setColor(I)V

    new-instance p1, Lorg/telegram/ui/Components/Text;

    const/high16 p3, 0x41400000    # 12.0f

    invoke-direct {p1, p2, p3}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;F)V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->text:Lorg/telegram/ui/Components/Text;

    return-void
.end method

.method private getPrivacy()J
    .locals 5

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->anonymous:Z

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x28ae10

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->did:J

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->this$1:Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;

    iget-object v2, v2, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->this$0:Lorg/telegram/ui/Stars/StarsReactionsSheet;

    invoke-static {v2}, Lorg/telegram/ui/Stars/StarsReactionsSheet;->access$600(Lorg/telegram/ui/Stars/StarsReactionsSheet;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_1
    iget-wide v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->did:J

    return-wide v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->animatedPosition:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->index:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->animatedScale:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v3, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->index:I

    if-ltz v3, :cond_0

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->this$1:Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;

    iget-object v4, v4, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->senders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->this$1:Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    const/high16 v3, 0x42a00000    # 80.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->this$1:Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;

    iget v3, v3, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->count:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    div-float v9, v2, v3

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->this$1:Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;

    iget v5, v5, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->count:F

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v1, v6

    sub-float/2addr v5, v1

    mul-float v5, v5, v9

    add-float v10, v3, v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v11, v1

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->clickBounds:Landroid/graphics/RectF;

    const/high16 v12, 0x40000000    # 2.0f

    div-float v2, v9, v12

    sub-float v3, v10, v2

    const/high16 v5, 0x42480000    # 50.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v11, v6

    add-float/2addr v2, v10

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v11

    invoke-virtual {v1, v3, v6, v2, v5}, Landroid/graphics/RectF;->set(FFFF)V

    const v1, 0x3e99999a    # 0.3f

    mul-float v1, v1, v8

    const v2, 0x3f333333    # 0.7f

    add-float/2addr v1, v2

    invoke-virtual {v7, v1, v1, v10, v11}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v2, 0x3d23d70a    # 0.04f

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v1

    invoke-virtual {v7, v1, v1, v10, v11}, Landroid/graphics/Canvas;->scale(FFFF)V

    const/high16 v1, 0x437f0000    # 255.0f

    const/4 v2, 0x0

    cmpl-float v3, v8, v2

    if-lez v3, :cond_2

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->animatedAnonymous:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v5, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->anonymous:Z

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v3

    const/high16 v5, 0x42600000    # 56.0f

    cmpg-float v6, v3, v4

    if-gez v6, :cond_1

    iget-object v6, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v12

    sub-float v13, v10, v13

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v14, v12

    sub-float v14, v11, v14

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v6, v13, v14, v15, v12}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    iget-object v6, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v6, v8}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    iget-object v6, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    iget-object v6, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v6, v4}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    :cond_1
    cmpl-float v2, v3, v2

    if-lez v2, :cond_2

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->anonymousAvatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    float-to-int v4, v10

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v4, v6

    float-to-int v12, v11

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    sub-int v13, v12, v13

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v4, v14

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v12, v5

    invoke-virtual {v2, v6, v13, v4, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->anonymousAvatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    mul-float v4, v8, v1

    mul-float v4, v4, v3

    float-to-int v3, v4

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setAlpha(I)V

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->anonymousAvatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v2, v7}, Lorg/telegram/ui/Components/AvatarDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->anonymousAvatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setAlpha(I)V

    :cond_2
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->starsText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float v3, v10, v3

    const v4, 0x40b51eb8    # 5.66f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    const/high16 v5, 0x41b80000    # 23.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v11

    const/high16 v12, 0x41800000    # 16.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    sub-float/2addr v6, v13

    iget-object v13, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->starsText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v13

    div-float/2addr v13, v14

    add-float/2addr v13, v10

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v13, v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v11

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v14

    add-float/2addr v4, v12

    invoke-virtual {v2, v3, v6, v13, v4}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v14

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v4, v14

    iget-object v6, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->this$1:Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;

    iget-object v6, v6, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v3, v4, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->this$1:Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;

    iget-object v3, v3, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->starsBackgroundPaint:Landroid/graphics/Paint;

    mul-float v1, v1, v8

    float-to-int v1, v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v14

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v14

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->this$1:Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;

    iget-object v4, v4, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->starsBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->starsText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v2

    div-float/2addr v2, v14

    sub-float v3, v10, v2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float v4, v11, v2

    const/4 v5, -0x1

    move-object/from16 v2, p1

    move v6, v8

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->text:Lorg/telegram/ui/Components/Text;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v9, v2

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/Text;->ellipsize(F)Lorg/telegram/ui/Components/Text;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->text:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Text;->getWidth()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v3, v10, v2

    const/high16 v2, 0x42280000    # 42.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float v4, v11, v2

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v5, v0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->this$1:Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;

    iget-object v5, v5, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->this$0:Lorg/telegram/ui/Stars/StarsReactionsSheet;

    invoke-static {v5}, Lorg/telegram/ui/Stars/StarsReactionsSheet;->access$700(Lorg/telegram/ui/Stars/StarsReactionsSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    invoke-static {v2, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public setAnonymous(Z)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->my:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->anonymous:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->anonymous:Z

    if-eqz p1, :cond_1

    sget p1, Lorg/telegram/messenger/R$string;->StarsReactionAnonymous:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->did:J

    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->getShortName(J)Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance v0, Lorg/telegram/ui/Components/Text;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-direct {v0, p1, v1}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;F)V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->text:Lorg/telegram/ui/Components/Text;

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->this$1:Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public setPrivacy(J)V
    .locals 5

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->my:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->getPrivacy()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-eqz v2, :cond_7

    const-wide/32 v0, 0x28ae10

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->anonymous:Z

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-eqz v4, :cond_2

    cmp-long v4, p1, v0

    if-nez v4, :cond_3

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->this$1:Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;

    iget-object p1, p1, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->this$0:Lorg/telegram/ui/Stars/StarsReactionsSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarsReactionsSheet;->access$600(Lorg/telegram/ui/Stars/StarsReactionsSheet;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide p1

    :cond_3
    iput-wide p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->did:J

    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->anonymous:Z

    if-eqz v0, :cond_4

    sget p1, Lorg/telegram/messenger/R$string;->StarsReactionAnonymous:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_4
    cmp-long v0, p1, v2

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->this$1:Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;

    iget-object p1, p1, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;->this$0:Lorg/telegram/ui/Stars/StarsReactionsSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stars/StarsReactionsSheet;->access$600(Lorg/telegram/ui/Stars/StarsReactionsSheet;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    if-ltz v0, :cond_5

    iget-wide v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->did:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getForcedFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    move-object p1, p2

    goto :goto_3

    :cond_5
    iget-wide v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->did:J

    neg-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    if-nez p1, :cond_6

    const-string p2, ""

    goto :goto_2

    :cond_6
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    goto :goto_1

    :goto_3
    new-instance p2, Lorg/telegram/ui/Components/Text;

    const/high16 v0, 0x41400000    # 12.0f

    invoke-direct {p2, p1, v0}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;F)V

    iput-object p2, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->text:Lorg/telegram/ui/Components/Text;

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->this$1:Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_7
    return-void
.end method

.method public setStars(J)V
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/Text;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u2b50\ufe0f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-static {p1, p2, v2}, Lorg/telegram/messenger/LocaleController;->formatNumber(JC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const p2, 0x3f59999a    # 0.85f

    invoke-static {p1, p2}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStars(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    const-string p2, "fonts/num.otf"

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    const/high16 v1, 0x41400000    # 12.0f

    invoke-direct {v0, p1, v1, p2}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarsReactionsSheet$TopSendersView$Sender;->starsText:Lorg/telegram/ui/Components/Text;

    return-void
.end method
