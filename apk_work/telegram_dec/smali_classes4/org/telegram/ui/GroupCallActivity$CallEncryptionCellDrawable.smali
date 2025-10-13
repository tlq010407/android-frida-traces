.class public final Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/GroupCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallEncryptionCellDrawable"
.end annotation


# instance fields
.field private final backgroundPaint:Landroid/graphics/Paint;

.field private final clipPath:Landroid/graphics/Path;

.field private final closeText:Lorg/telegram/ui/Components/Text;

.field private final dividerPaint:Landroid/graphics/Paint;

.field private final fromRect:Landroid/graphics/RectF;

.field private listBackgroundColor:I

.field private loading:Z

.field private final loadingAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field private parentView:Landroid/view/View;

.field private final slots:[Lorg/telegram/ui/GroupCallActivity$EmojiSlot;

.field private final text1:Lorg/telegram/ui/Components/Text;

.field private final text2:Lorg/telegram/ui/Components/Text;

.field private final toRect:Landroid/graphics/RectF;


# direct methods
.method public static synthetic $r8$lambda$Vh44-dtDCwrtcQtOX5crb4sf96U(Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->invalidate()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->backgroundPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->dividerPaint:Landroid/graphics/Paint;

    const/4 p1, 0x4

    new-array p1, p1, [Lorg/telegram/ui/GroupCallActivity$EmojiSlot;

    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->slots:[Lorg/telegram/ui/GroupCallActivity$EmojiSlot;

    iput-boolean v0, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->loading:Z

    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v2, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;)V

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x140

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Ljava/lang/Runnable;JJLandroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->loadingAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->fromRect:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->toRect:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->clipPath:Landroid/graphics/Path;

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->slots:[Lorg/telegram/ui/GroupCallActivity$EmojiSlot;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    new-instance v1, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;

    invoke-direct {v1, p1}, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;-><init>(I)V

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->backgroundPaint:Landroid/graphics/Paint;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_listViewBackground:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Lorg/telegram/ui/Components/Text;

    sget v0, Lorg/telegram/messenger/R$string;->ConferenceEncrypted:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-direct {p1, v0, v2, v1}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->text1:Lorg/telegram/ui/Components/Text;

    new-instance p1, Lorg/telegram/ui/Components/Text;

    sget v0, Lorg/telegram/messenger/R$string;->ConferenceEncryptedInfo:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41300000    # 11.0f

    invoke-direct {p1, v0, v1}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;F)V

    const/16 v0, 0x63

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Text;->multiline(I)Lorg/telegram/ui/Components/Text;

    move-result-object p1

    const/high16 v0, 0x43480000    # 200.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Text;->setMaxWidth(F)Lorg/telegram/ui/Components/Text;

    move-result-object p1

    const v0, 0x402a3d71    # 2.66f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Text;->lineSpacing(F)Lorg/telegram/ui/Components/Text;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->text2:Lorg/telegram/ui/Components/Text;

    new-instance p1, Lorg/telegram/ui/Components/Text;

    sget v0, Lorg/telegram/messenger/R$string;->ConferenceEncryptedClose:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-direct {p1, v0, v2, v1}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->closeText:Lorg/telegram/ui/Components/Text;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->setEmojis([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$20000(Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->setPaintBackgroundColor(I)V

    return-void
.end method

.method private invalidate()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->parentView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private setPaintBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->listBackgroundColor:I

    invoke-direct {p0}, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->invalidate()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;FF)Z
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->text1:Lorg/telegram/ui/Components/Text;

    const/high16 v2, 0x43040000    # 132.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Text;->ellipsize(F)Lorg/telegram/ui/Components/Text;

    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->backgroundPaint:Landroid/graphics/Paint;

    iget v2, v0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->listBackgroundColor:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_listViewBackground:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-static {v2, v3, v8}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->loadingAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, v0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->loading:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x42ac0000    # 86.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->text1:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Text;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x41e00000    # 28.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x43680000    # 232.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v9, v5

    const/high16 v10, 0x42580000    # 54.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->text2:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v6

    add-float/2addr v5, v6

    const/high16 v6, 0x42480000    # 50.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float v11, v5, v6

    invoke-static {v3, v9, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    invoke-static {v4, v11, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v12, 0x41800000    # 16.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v2, v6, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v2

    int-to-float v2, v2

    sget-object v13, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    sub-float v6, p2, v3

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v6, v14

    add-float v3, p2, v3

    div-float/2addr v3, v14

    const/4 v15, 0x0

    invoke-virtual {v13, v6, v15, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v13, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->clipPath:Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v13, v2, v2, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v7, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x42000000    # 32.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v9, v3

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v3, v5

    float-to-int v3, v3

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v13}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    float-to-int v6, v6

    const/16 v16, 0x2

    div-int/lit8 v17, v2, 0x2

    sub-int v6, v6, v17

    invoke-virtual {v13}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    float-to-int v2, v2

    add-int v2, v2, v17

    iget-object v10, v0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->fromRect:Landroid/graphics/RectF;

    iget v12, v13, Landroid/graphics/RectF;->left:F

    float-to-int v12, v12

    const/high16 v18, 0x40e00000    # 7.0f

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v19

    add-int v12, v12, v19

    const/high16 v19, 0x41200000    # 10.0f

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v20

    add-int v12, v12, v20

    sub-int v12, v12, v17

    int-to-float v12, v12

    int-to-float v6, v6

    iget v15, v13, Landroid/graphics/RectF;->left:F

    float-to-int v15, v15

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v18

    add-int v15, v15, v18

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v18

    add-int v15, v15, v18

    add-int v15, v15, v17

    int-to-float v15, v15

    int-to-float v2, v2

    invoke-virtual {v10, v12, v6, v15, v2}, Landroid/graphics/RectF;->set(FFFF)V

    div-float v10, p2, v14

    mul-int/lit8 v12, v3, 0x2

    int-to-float v12, v12

    sub-float v12, v10, v12

    int-to-float v15, v3

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v3, v3, v15

    add-float/2addr v3, v12

    float-to-int v3, v3

    iget-object v14, v0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->toRect:Landroid/graphics/RectF;

    div-int/lit8 v21, v5, 0x2

    move/from16 v22, v11

    sub-int v11, v3, v21

    int-to-float v11, v11

    move/from16 v23, v9

    iget v9, v13, Landroid/graphics/RectF;->top:F

    const v24, 0x41daa3d7    # 27.33f

    move/from16 v25, v1

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v9, v1

    int-to-float v1, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float v26, v1, v5

    sub-float v9, v9, v26

    float-to-int v1, v9

    int-to-float v1, v1

    add-int v3, v3, v21

    int-to-float v3, v3

    iget v5, v13, Landroid/graphics/RectF;->top:F

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v5, v9

    add-float v5, v5, v26

    float-to-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v14, v11, v1, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->fromRect:Landroid/graphics/RectF;

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->toRect:Landroid/graphics/RectF;

    invoke-static {v1, v3, v8, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerpCentered(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->slots:[Lorg/telegram/ui/GroupCallActivity$EmojiSlot;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->toRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v7, v3, v8}, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)Z

    move-result v1

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->fromRect:Landroid/graphics/RectF;

    iget v5, v13, Landroid/graphics/RectF;->left:F

    float-to-int v5, v5

    const/high16 v9, 0x41d80000    # 27.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v5, v11

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v5, v11

    sub-int v5, v5, v17

    int-to-float v5, v5

    iget v11, v13, Landroid/graphics/RectF;->left:F

    float-to-int v11, v11

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    add-int/2addr v11, v14

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    add-int/2addr v11, v14

    add-int v11, v11, v17

    int-to-float v11, v11

    invoke-virtual {v3, v5, v6, v11, v2}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float v3, v3, v15

    add-float/2addr v3, v12

    float-to-int v3, v3

    iget-object v5, v0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->toRect:Landroid/graphics/RectF;

    sub-int v11, v3, v21

    int-to-float v11, v11

    iget v14, v13, Landroid/graphics/RectF;->top:F

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v14, v9

    sub-float v14, v14, v26

    float-to-int v9, v14

    int-to-float v9, v9

    add-int v3, v3, v21

    int-to-float v3, v3

    iget v14, v13, Landroid/graphics/RectF;->top:F

    move/from16 v27, v1

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v14, v1

    add-float v14, v14, v26

    float-to-int v1, v14

    int-to-float v1, v1

    invoke-virtual {v5, v11, v9, v3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->fromRect:Landroid/graphics/RectF;

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->toRect:Landroid/graphics/RectF;

    invoke-static {v1, v3, v8, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerpCentered(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->slots:[Lorg/telegram/ui/GroupCallActivity$EmojiSlot;

    const/4 v9, 0x1

    aget-object v1, v1, v9

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->toRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v7, v3, v8}, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v27, 0x1

    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->text1:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Text;->getWidth()F

    move-result v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    sub-float v3, v10, v3

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v10, v5, v8

    const/high16 v11, 0x3f400000    # 0.75f

    move/from16 v14, v25

    invoke-static {v5, v11, v14}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v5

    mul-float v10, v10, v5

    const/4 v5, -0x1

    move v11, v2

    move-object/from16 v2, p1

    move v14, v6

    move v6, v10

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->fromRect:Landroid/graphics/RectF;

    iget v2, v13, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    const/high16 v3, 0x423c0000    # 47.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v2, v4

    sub-int v2, v2, v17

    int-to-float v2, v2

    iget v4, v13, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v4, v3

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v4, v3

    add-int v4, v4, v17

    int-to-float v3, v4

    invoke-virtual {v1, v2, v14, v3, v11}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v1, 0x40200000    # 2.5f

    mul-float v1, v1, v15

    add-float/2addr v1, v12

    float-to-int v1, v1

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->toRect:Landroid/graphics/RectF;

    sub-int v3, v1, v21

    int-to-float v3, v3

    iget v4, v13, Landroid/graphics/RectF;->top:F

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    sub-float v4, v4, v26

    float-to-int v4, v4

    int-to-float v4, v4

    add-int v1, v1, v21

    int-to-float v1, v1

    iget v5, v13, Landroid/graphics/RectF;->top:F

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    add-float v5, v5, v26

    float-to-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->fromRect:Landroid/graphics/RectF;

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->toRect:Landroid/graphics/RectF;

    invoke-static {v1, v2, v8, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerpCentered(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->slots:[Lorg/telegram/ui/GroupCallActivity$EmojiSlot;

    aget-object v1, v1, v16

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->toRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v7, v2, v8}, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v27, 0x1

    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->fromRect:Landroid/graphics/RectF;

    iget v2, v13, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    const/high16 v3, 0x41d80000    # 27.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v2, v4

    sub-int v2, v2, v17

    int-to-float v2, v2

    iget v4, v13, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v4, v3

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v4, v3

    add-int v4, v4, v17

    int-to-float v3, v4

    invoke-virtual {v1, v2, v14, v3, v11}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v1, 0x40600000    # 3.5f

    mul-float v15, v15, v1

    add-float/2addr v12, v15

    float-to-int v1, v12

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->toRect:Landroid/graphics/RectF;

    sub-int v3, v1, v21

    int-to-float v3, v3

    iget v4, v13, Landroid/graphics/RectF;->top:F

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    sub-float v4, v4, v26

    float-to-int v4, v4

    int-to-float v4, v4

    add-int v1, v1, v21

    int-to-float v1, v1

    iget v5, v13, Landroid/graphics/RectF;->top:F

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    add-float v5, v5, v26

    float-to-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->fromRect:Landroid/graphics/RectF;

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->toRect:Landroid/graphics/RectF;

    invoke-static {v1, v2, v8, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerpCentered(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->slots:[Lorg/telegram/ui/GroupCallActivity$EmojiSlot;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    iget-object v2, v0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->toRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v7, v2, v8}, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    move/from16 v9, v27

    goto :goto_0

    :goto_1
    cmpl-float v1, v8, v1

    if-lez v1, :cond_3

    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->text2:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v13}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v23, v3

    sub-float/2addr v2, v4

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v2

    const/high16 v2, 0x42580000    # 54.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v4, v2

    const/4 v5, -0x1

    move-object/from16 v2, p1

    move/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->dividerPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->dividerPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v2, v2, v8

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v2, v13, Landroid/graphics/RectF;->left:F

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v22, v3

    iget v4, v13, Landroid/graphics/RectF;->right:F

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float v11, v22, v1

    const v1, 0x3f28f5c3    # 0.66f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float v5, v11, v1

    iget-object v6, v0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->dividerPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->closeText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v13}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->closeText:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Text;->getWidth()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float v3, v2, v3

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float v4, v22, v2

    const/4 v5, -0x1

    move-object/from16 v2, p1

    move/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return v9
.end method

.method public resetParentView(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->parentView:Landroid/view/View;

    if-eq v0, p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->slots:[Lorg/telegram/ui/GroupCallActivity$EmojiSlot;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->detach(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->parentView:Landroid/view/View;

    :cond_1
    return-void
.end method

.method public setEmojis([Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->loading:Z

    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->slots:[Lorg/telegram/ui/GroupCallActivity$EmojiSlot;

    aget-object v1, v1, v0

    if-nez p1, :cond_1

    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    aget-object v2, p1, v0

    :goto_2
    invoke-virtual {v1, v2}, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->set(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->invalidate()V

    return-void
.end method

.method public setParentView(Landroid/view/View;)V
    .locals 3

    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->parentView:Landroid/view/View;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$CallEncryptionCellDrawable;->slots:[Lorg/telegram/ui/GroupCallActivity$EmojiSlot;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/telegram/ui/GroupCallActivity$EmojiSlot;->attach(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
