.class Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FoldersPreview"
.end annotation


# instance fields
.field countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field leftFolder:Lorg/telegram/ui/Components/Text;

.field leftFolder2:Lorg/telegram/ui/Components/Text;

.field leftGradient:Landroid/graphics/LinearGradient;

.field leftMatrix:Landroid/graphics/Matrix;

.field leftPaint:Landroid/graphics/Paint;

.field middleFolder:Lorg/telegram/ui/Components/Text;

.field paint:Landroid/text/TextPaint;

.field path:Landroid/graphics/Path;

.field radii:[F

.field rightFolder:Lorg/telegram/ui/Components/Text;

.field rightFolder2:Lorg/telegram/ui/Components/Text;

.field rightGradient:Landroid/graphics/LinearGradient;

.field rightMatrix:Landroid/graphics/Matrix;

.field rightPaint:Landroid/graphics/Paint;

.field selectedPaint:Landroid/graphics/Paint;

.field selectedTextPaint:Landroid/text/TextPaint;

.field final synthetic this$1:Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/ArrayList;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    const/4 v5, 0x2

    move-object/from16 v6, p1

    iput-object v6, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->this$1:Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;

    move-object/from16 v6, p2

    invoke-direct {v0, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/text/TextPaint;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v6, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->paint:Landroid/text/TextPaint;

    new-instance v6, Landroid/text/TextPaint;

    invoke-direct {v6, v7}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v6, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->selectedTextPaint:Landroid/text/TextPaint;

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->selectedPaint:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->path:Landroid/graphics/Path;

    const/16 v6, 0x8

    new-array v6, v6, [F

    iput-object v6, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->radii:[F

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->leftPaint:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->rightPaint:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    iput-object v6, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->leftMatrix:Landroid/graphics/Matrix;

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    iput-object v6, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->rightMatrix:Landroid/graphics/Matrix;

    iget-object v6, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->paint:Landroid/text/TextPaint;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_profile_tabText:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    const v10, 0x3f4ccccd    # 0.8f

    invoke-static {v9, v10}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->paint:Landroid/text/TextPaint;

    const v9, 0x417547ae    # 15.33f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v6, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->paint:Landroid/text/TextPaint;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v6, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->selectedTextPaint:Landroid/text/TextPaint;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText2:I

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v12

    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->selectedTextPaint:Landroid/text/TextPaint;

    const/high16 v12, 0x41880000    # 17.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v6, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->selectedTextPaint:Landroid/text/TextPaint;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v6, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->selectedPaint:Landroid/graphics/Paint;

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_unread:I

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v12

    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v13, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/4 v6, 0x0

    invoke-direct {v13, v6, v7, v7}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    iput-object v13, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    sget-object v19, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0xfa

    const v14, 0x3e99999a    # 0.3f

    invoke-virtual/range {v13 .. v19}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    iget-object v12, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v12, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const v13, 0x413a8f5c    # 11.66f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    iget-object v12, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    iget-object v12, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v12, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v12, v7}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setGravity(I)V

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    invoke-static {v8, v10}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v8

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    if-eqz v1, :cond_0

    new-instance v11, Lorg/telegram/ui/Components/Text;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->normalizeTitle(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v12

    invoke-direct {v11, v1, v9, v12}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    invoke-virtual {v11, v0}, Lorg/telegram/ui/Components/Text;->supportAnimatedEmojis(Landroid/view/View;)Lorg/telegram/ui/Components/Text;

    move-result-object v1

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/Text;->setColor(I)Lorg/telegram/ui/Components/Text;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->leftFolder2:Lorg/telegram/ui/Components/Text;

    :cond_0
    if-eqz v2, :cond_1

    new-instance v1, Lorg/telegram/ui/Components/Text;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->normalizeTitle(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v11

    invoke-direct {v1, v2, v9, v11}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/Text;->supportAnimatedEmojis(Landroid/view/View;)Lorg/telegram/ui/Components/Text;

    move-result-object v1

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/Text;->setColor(I)Lorg/telegram/ui/Components/Text;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->leftFolder:Lorg/telegram/ui/Components/Text;

    :cond_1
    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->normalizeTitle(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/Text;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v11

    invoke-direct {v2, v1, v9, v11}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/Text;->supportAnimatedEmojis(Landroid/view/View;)Lorg/telegram/ui/Components/Text;

    move-result-object v2

    invoke-virtual {v2, v10}, Lorg/telegram/ui/Components/Text;->setColor(I)Lorg/telegram/ui/Components/Text;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->middleFolder:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Text;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    invoke-static {v1, v2, v6}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->middleFolder:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Text;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    move-object/from16 v10, p6

    invoke-static {v1, v10, v2}, Lorg/telegram/messenger/MessageObject;->replaceAnimatedEmoji(Ljava/lang/CharSequence;Ljava/util/ArrayList;Landroid/graphics/Paint$FontMetricsInt;)Landroid/text/Spannable;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->middleFolder:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/Text;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->middleFolder:Lorg/telegram/ui/Components/Text;

    if-eqz p7, :cond_2

    const/16 v2, 0x1a

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Text;->setEmojiCacheType(I)Lorg/telegram/ui/Components/Text;

    if-eqz v3, :cond_3

    new-instance v1, Lorg/telegram/ui/Components/Text;

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->normalizeTitle(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-direct {v1, v2, v9, v3}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/Text;->supportAnimatedEmojis(Landroid/view/View;)Lorg/telegram/ui/Components/Text;

    move-result-object v1

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/Text;->setColor(I)Lorg/telegram/ui/Components/Text;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->rightFolder:Lorg/telegram/ui/Components/Text;

    :cond_3
    if-eqz v4, :cond_4

    new-instance v1, Lorg/telegram/ui/Components/Text;

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->normalizeTitle(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-direct {v1, v2, v9, v3}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/Text;->supportAnimatedEmojis(Landroid/view/View;)Lorg/telegram/ui/Components/Text;

    move-result-object v1

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/Text;->setColor(I)Lorg/telegram/ui/Components/Text;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->rightFolder2:Lorg/telegram/ui/Components/Text;

    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->radii:[F

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x3

    aput v2, v1, v3

    aput v2, v1, v5

    aput v2, v1, v7

    aput v2, v1, v6

    iget-object v1, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->radii:[F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x7

    aput v2, v1, v3

    const/4 v3, 0x6

    aput v2, v1, v3

    const/4 v3, 0x5

    aput v2, v1, v3

    const/4 v3, 0x4

    aput v2, v1, v3

    new-instance v1, Landroid/graphics/LinearGradient;

    const/high16 v2, 0x42a00000    # 80.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, -0x1

    const v6, 0xffffff

    filled-new-array {v4, v6}, [I

    move-result-object v7

    new-array v8, v5, [F

    fill-array-data v8, :array_0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 p1, v1

    move/from16 p2, v12

    move/from16 p3, v10

    move/from16 p4, v3

    move/from16 p5, v11

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    invoke-direct/range {p1 .. p8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->leftGradient:Landroid/graphics/LinearGradient;

    iget-object v3, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->leftPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->leftPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v1, Landroid/graphics/LinearGradient;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    filled-new-array {v6, v4}, [I

    move-result-object v3

    new-array v4, v5, [F

    fill-array-data v4, :array_1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 p1, v1

    move/from16 p2, v8

    move/from16 p3, v5

    move/from16 p4, v2

    move/from16 p5, v6

    move-object/from16 p6, v3

    move-object/from16 p7, v4

    invoke-direct/range {p1 .. p8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->rightGradient:Landroid/graphics/LinearGradient;

    iget-object v2, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->rightPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->rightPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v2, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private isCountEmpty()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private normalizeTitle(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ALL_CHATS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget p1, Lorg/telegram/messenger/R$string;->FilterAllChats:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    const/16 v6, 0xff

    const/16 v7, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v7, 0x40000000    # 2.0f

    div-float v9, v1, v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v7

    iget-object v2, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->middleFolder:Lorg/telegram/ui/Components/Text;

    const v3, 0x41751eb8    # 15.32f

    const/4 v10, 0x0

    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v2, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->middleFolder:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v2

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->isCountEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v5

    add-float/2addr v4, v5

    :goto_0
    add-float/2addr v2, v4

    div-float v4, v2, v7

    sub-float v4, v9, v4

    iget-object v5, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->middleFolder:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v5

    div-float/2addr v5, v7

    sub-float v5, v1, v5

    invoke-virtual {v8, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v5, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->middleFolder:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v5, v8}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    move v11, v2

    move v12, v4

    goto :goto_1

    :cond_1
    move v12, v9

    const/4 v11, 0x0

    :goto_1
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->isCountEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    iget-object v4, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->middleFolder:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v4

    add-float/2addr v4, v12

    const v5, 0x40951eb8    # 4.66f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    const/high16 v5, 0x41100000    # 9.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v1, v6

    float-to-int v6, v6

    iget-object v13, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->middleFolder:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v13

    add-float/2addr v13, v12

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v13, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v3

    add-float/2addr v13, v3

    float-to-int v3, v13

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v13, v1

    float-to-int v13, v13

    invoke-virtual {v2, v4, v6, v3, v13}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v3, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->selectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const v3, 0x3ea8f5c3    # 0.33f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    const v4, 0x3f28f5c3    # 0.66f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    iget-object v3, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v2, v8}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float v3, v12, v2

    iget-object v4, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->leftFolder:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->leftFolder2:Lorg/telegram/ui/Components/Text;

    const/high16 v5, 0x42800000    # 64.0f

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v4, :cond_3

    iget-object v4, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->leftFolder:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    cmpg-float v4, v4, v13

    if-gez v4, :cond_3

    iget-object v4, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->leftFolder2:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v4

    add-float/2addr v4, v2

    sub-float v4, v3, v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v13, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->leftFolder2:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v13

    div-float/2addr v13, v7

    sub-float v13, v1, v13

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v13, v14

    invoke-virtual {v8, v4, v13}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v13, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->leftFolder2:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v13, v8}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    move v13, v4

    goto :goto_2

    :cond_3
    move v13, v3

    :goto_2
    iget-object v4, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->leftFolder:Lorg/telegram/ui/Components/Text;

    if-eqz v4, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v4, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->leftFolder:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v4

    div-float/2addr v4, v7

    sub-float v4, v1, v4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v4, v14

    invoke-virtual {v8, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->leftFolder:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v3, v8}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    add-float v3, v12, v11

    iget-object v4, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->rightFolder:Lorg/telegram/ui/Components/Text;

    if-eqz v4, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    add-float v4, v3, v2

    iget-object v14, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->rightFolder:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v14}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v14

    div-float/2addr v14, v7

    sub-float v14, v1, v14

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v14, v15

    invoke-virtual {v8, v4, v14}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->rightFolder:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v4, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->rightFolder:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v4

    add-float/2addr v4, v2

    add-float/2addr v3, v4

    :cond_5
    iget-object v4, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->rightFolder2:Lorg/telegram/ui/Components/Text;

    if-eqz v4, :cond_6

    iget-object v4, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->rightFolder:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    add-float v4, v3, v2

    iget-object v5, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->rightFolder2:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v5

    div-float/2addr v5, v7

    sub-float v5, v1, v5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v5, v14

    invoke-virtual {v8, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->rightFolder2:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v4, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->rightFolder2:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v4

    add-float/2addr v2, v4

    add-float/2addr v3, v2

    :cond_6
    move v14, v3

    iget-object v2, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->middleFolder:Lorg/telegram/ui/Components/Text;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Text;->getHeight()F

    move-result v2

    div-float/2addr v2, v7

    add-float/2addr v1, v2

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float v15, v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    add-float v5, v15, v6

    iget-object v6, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->paint:Landroid/text/TextPaint;

    const/4 v2, 0x0

    move-object/from16 v1, p1

    move v3, v15

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    div-float/2addr v11, v7

    sub-float v2, v9, v11

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v15, v4

    add-float/2addr v11, v9

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v11

    invoke-virtual {v1, v2, v4, v3, v15}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->path:Landroid/graphics/Path;

    iget-object v3, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->radii:[F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v1, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->path:Landroid/graphics/Path;

    iget-object v2, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->selectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2, v13}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->leftMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    iget-object v3, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->leftMatrix:Landroid/graphics/Matrix;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    invoke-static {v12, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {v3, v2, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v2, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->leftGradient:Landroid/graphics/LinearGradient;

    iget-object v3, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->leftMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v2, v1

    int-to-float v1, v2

    invoke-static {v1, v14}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->rightMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    iget-object v2, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->rightMatrix:Landroid/graphics/Matrix;

    const/high16 v3, 0x42b00000    # 88.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-static {v11, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v2, v1, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v1, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->rightGradient:Landroid/graphics/LinearGradient;

    iget-object v2, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->rightMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->leftPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    move v4, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->rightPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public setCount(IZ)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->cancelAnimation()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-lez p1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
