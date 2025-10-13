.class public abstract Lorg/telegram/ui/Stories/StoriesUtilities;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;,
        Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;,
        Lorg/telegram/ui/Stories/StoriesUtilities$StoryGradientTools;,
        Lorg/telegram/ui/Stories/StoriesUtilities$UserStoriesLoadOperation;
    }
.end annotation


# static fields
.field public static closeFriendsGradientTools:Lorg/telegram/ui/Components/GradientTools;

.field static debugRunnable:Ljava/lang/Runnable;

.field static debugState:I

.field public static errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

.field public static expiredStoryDrawable:Landroid/graphics/drawable/Drawable;

.field private static final forumRect:Landroid/graphics/RectF;

.field private static final forumRoundRectMatrix:Landroid/graphics/Matrix;

.field private static final forumRoundRectPath:Landroid/graphics/Path;

.field private static final forumRoundRectPathMeasure:Landroid/graphics/PathMeasure;

.field private static final forumSegmentPath:Landroid/graphics/Path;

.field public static grayLastColor:I

.field public static grayPaint:Landroid/graphics/Paint;

.field private static final rectTmp:Landroid/graphics/RectF;

.field static scheduled:Z

.field public static storiesGradientTools:[Lorg/telegram/ui/Components/GradientTools;

.field public static storyCellGrayLastColor:I

.field public static storyCellGreyPaint:[Landroid/graphics/Paint;


# direct methods
.method public static synthetic $r8$lambda$kfHW3-kZyQMzq2sFs9GFKip6YvU([Ljava/lang/Runnable;Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/StoriesUtilities;->lambda$ensureStoryFileLoaded$1([Ljava/lang/Runnable;Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vj-5KJCnxfshabut8bbOCF844fQ(Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/StoriesUtilities;->lambda$ensureStoryFileLoaded$0(Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;Ljava/lang/Runnable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [Lorg/telegram/ui/Components/GradientTools;

    sput-object v1, Lorg/telegram/ui/Stories/StoriesUtilities;->storiesGradientTools:[Lorg/telegram/ui/Components/GradientTools;

    new-array v0, v0, [Landroid/graphics/Paint;

    sput-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storyCellGreyPaint:[Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->rectTmp:Landroid/graphics/RectF;

    const/4 v0, 0x0

    sput-boolean v0, Lorg/telegram/ui/Stories/StoriesUtilities;->scheduled:Z

    sput v0, Lorg/telegram/ui/Stories/StoriesUtilities;->debugState:I

    new-instance v0, Lorg/telegram/ui/Stories/StoriesUtilities$1;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/StoriesUtilities$1;-><init>()V

    sput-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->debugRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->forumRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->forumRoundRectPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->forumRoundRectMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    sput-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->forumRoundRectPathMeasure:Landroid/graphics/PathMeasure;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->forumSegmentPath:Landroid/graphics/Path;

    return-void
.end method

.method public static applyUploadingStr(Lorg/telegram/ui/ActionBar/SimpleTextView;ZZ)V
    .locals 4

    if-eqz p2, :cond_0

    sget p2, Lorg/telegram/messenger/R$string;->StoryEditing:I

    :goto_0
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_0
    sget p2, Lorg/telegram/messenger/R$string;->UploadingStory:I

    goto :goto_0

    :goto_1
    const-string v0, "\u2026"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {p2}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Stories/UploadingDotsSpannable;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/UploadingDotsSpannable;-><init>()V

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, p0, p1}, Lorg/telegram/ui/Stories/UploadingDotsSpannable;->setParent(Landroid/view/View;Z)V

    :cond_1
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    return-void
.end method

.method public static applyViewedUser(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    iget-wide v2, v2, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    invoke-static {p0}, Lorg/telegram/ui/Stories/StoriesUtilities;->hasExpiredViews(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    if-nez v0, :cond_1

    new-instance v0, Lorg/telegram/tgnet/tl/TL_stories$TL_storyViews;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stories$TL_storyViews;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    :cond_1
    iget-object p0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->views_count:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->views_count:I

    iget-object p0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->recent_viewers:Ljava/util/ArrayList;

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private static checkGrayPaint(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 4

    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->grayPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->grayPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->grayPaint:Landroid/graphics/Paint;

    const v1, 0x3fa66666    # 1.3f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->grayPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0, p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p0

    sget v0, Lorg/telegram/ui/Stories/StoriesUtilities;->grayLastColor:I

    if-eq v0, p0, :cond_3

    sput p0, Lorg/telegram/ui/Stories/StoriesUtilities;->grayLastColor:I

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v0

    const v1, 0x3f389375    # 0.721f

    const v2, 0x3e4ccccd    # 0.2f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v3, -0x1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->grayPaint:Landroid/graphics/Paint;

    invoke-static {p0, v3, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_1
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->grayPaint:Landroid/graphics/Paint;

    const v1, 0x3ee147ae    # 0.44f

    invoke-static {p0, v3, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p0

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->grayPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-static {p0, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p0

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private static checkStoriesGradientTools(Z)V
    .locals 3

    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storiesGradientTools:[Lorg/telegram/ui/Components/GradientTools;

    aget-object v1, v0, p0

    if-nez v1, :cond_1

    new-instance v1, Lorg/telegram/ui/Components/GradientTools;

    invoke-direct {v1}, Lorg/telegram/ui/Components/GradientTools;-><init>()V

    aput-object v1, v0, p0

    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storiesGradientTools:[Lorg/telegram/ui/Components/GradientTools;

    aget-object v0, v0, p0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Components/GradientTools;->isDiagonal:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Components/GradientTools;->isRotate:Z

    if-eqz p0, :cond_0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle_dialog1:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle_dialog2:I

    :goto_0
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/GradientTools;->setColors(II)V

    goto :goto_1

    :cond_0
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle1:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle2:I

    goto :goto_0

    :goto_1
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storiesGradientTools:[Lorg/telegram/ui/Components/GradientTools;

    aget-object v0, v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    const v1, 0x40133333    # 2.3f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storiesGradientTools:[Lorg/telegram/ui/Components/GradientTools;

    aget-object v0, v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storiesGradientTools:[Lorg/telegram/ui/Components/GradientTools;

    aget-object p0, v0, p0

    iget-object p0, p0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :cond_1
    return-void
.end method

.method private static checkStoryCellGrayPaint(ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 4

    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storyCellGreyPaint:[Landroid/graphics/Paint;

    aget-object v1, v0, p0

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    aput-object v1, v0, p0

    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storyCellGreyPaint:[Landroid/graphics/Paint;

    aget-object v0, v0, p0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storyCellGreyPaint:[Landroid/graphics/Paint;

    aget-object v0, v0, p0

    const v1, 0x3fa66666    # 1.3f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storyCellGreyPaint:[Landroid/graphics/Paint;

    aget-object v0, v0, p0

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :cond_0
    if-nez p0, :cond_1

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    goto :goto_0

    :cond_1
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultArchived:I

    :goto_0
    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    sget v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storyCellGrayLastColor:I

    if-eq v0, p1, :cond_4

    sput p1, Lorg/telegram/ui/Stories/StoriesUtilities;->storyCellGrayLastColor:I

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v0

    const v1, 0x3f389375    # 0.721f

    const v2, 0x3e4ccccd    # 0.2f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_3

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v3, -0x1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storyCellGreyPaint:[Landroid/graphics/Paint;

    aget-object p0, v0, p0

    invoke-static {p1, v3, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    :goto_1
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    :cond_2
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storyCellGreyPaint:[Landroid/graphics/Paint;

    aget-object p0, v0, p0

    const v0, 0x3ee147ae    # 0.44f

    invoke-static {p1, v3, v0}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    goto :goto_1

    :cond_3
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storyCellGreyPaint:[Landroid/graphics/Paint;

    aget-object p0, v0, p0

    const/high16 v0, -0x1000000

    invoke-static {p1, v0, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method public static createExpiredStoryString()Ljava/lang/CharSequence;
    .locals 3

    .line 0
    sget v0, Lorg/telegram/messenger/R$string;->ExpiredStory:I

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lorg/telegram/ui/Stories/StoriesUtilities;->createExpiredStoryString(ZI[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static varargs createExpiredStoryString(ZI[Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 2

    .line 0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string v1, "d "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance p1, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_mini_bomb:I

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    if-eqz p0, :cond_0

    const p0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p1, p0, p0}, Lorg/telegram/ui/Components/ColoredImageSpan;->setScale(FF)V

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/ColoredImageSpan;->setTopOffset(I)V

    :goto_0
    const/4 p0, 0x1

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2, p0, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method public static createReplyStoryString()Ljava/lang/CharSequence;
    .locals 4

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string v1, "d "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->Story:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v1, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_mini_replystory2:I

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method public static drawArcExcludeArc(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;FFFF)V
    .locals 10

    move v6, p3

    move v7, p4

    move/from16 v8, p6

    sub-float v9, v7, v6

    cmpg-float v0, v6, p5

    if-gez v0, :cond_0

    add-float v0, p5, v9

    cmpg-float v0, v7, v0

    if-gez v0, :cond_0

    invoke-static {p4, p5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float v3, v0, v6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p3, v8}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v1, p5

    invoke-static {p4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    cmpg-float v2, v1, v3

    if-gez v2, :cond_3

    if-nez v0, :cond_2

    cmpl-float v0, v6, p5

    if-lez v0, :cond_1

    cmpg-float v0, v7, v8

    if-ltz v0, :cond_2

    :cond_1
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, v9

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_2
    return-void

    :cond_3
    sub-float v4, v1, v3

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public static drawAvatarWithStory(JLandroid/graphics/Canvas;Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)V
    .locals 7

    .line 0
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/telegram/ui/Stories/StoriesController;->hasStories(J)Z

    move-result v0

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    cmp-long v3, v1, p0

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_0
    move-wide v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawAvatarWithStory(JLandroid/graphics/Canvas;Lorg/telegram/messenger/ImageReceiver;ZLorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)V

    return-void
.end method

.method public static drawAvatarWithStory(JLandroid/graphics/Canvas;Lorg/telegram/messenger/ImageReceiver;ZLorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)V
    .locals 26

    .line 0
    move-wide/from16 v0, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v11

    iget-boolean v2, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->animate:Z

    invoke-static/range {p5 .. p5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$000(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)J

    move-result-wide v3

    const/4 v5, 0x0

    cmp-long v6, v3, v0

    if-eqz v6, :cond_0

    invoke-static {v10, v0, v1}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$002(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;J)J

    invoke-virtual/range {p5 .. p5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->reset()V

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {v11, v0, v1}, Lorg/telegram/ui/Stories/StoriesController;->isLoading(J)Z

    move-result v3

    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v4, v0, v1}, Lorg/telegram/messenger/ChatObject;->isForum(IJ)Z

    move-result v4

    const/4 v12, 0x1

    if-eqz v4, :cond_1

    iget-boolean v4, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isDialogStoriesCell:Z

    if-nez v4, :cond_1

    const/4 v13, 0x1

    goto :goto_0

    :cond_1
    const/4 v13, 0x0

    :goto_0
    iget-boolean v4, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawHiddenStoriesAsSegments:Z

    if-eqz v4, :cond_2

    invoke-virtual {v11}, Lorg/telegram/ui/Stories/StoriesController;->hasHiddenStories()Z

    move-result v4

    goto :goto_1

    :cond_2
    move/from16 v4, p4

    :goto_1
    iget-object v6, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v6, :cond_3

    iget v3, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->storyId:I

    invoke-virtual {v11, v0, v1, v3}, Lorg/telegram/ui/Stories/StoriesController;->getUnreadState(JI)I

    const/4 v3, 0x0

    :cond_3
    const/4 v14, 0x3

    const/4 v15, 0x2

    if-eqz v3, :cond_5

    invoke-virtual {v11, v0, v1}, Lorg/telegram/ui/Stories/StoriesController;->hasStories(J)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x3

    const/4 v1, 0x2

    :goto_2
    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    invoke-static {v11, v0, v1}, Lorg/telegram/ui/Stories/StoriesUtilities;->getPredictiveUnreadState(Lorg/telegram/ui/Stories/StoriesController;J)I

    move-result v0

    move v1, v0

    const/4 v0, 0x3

    goto :goto_2

    :cond_5
    if-eqz v4, :cond_8

    iget-boolean v4, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawSegments:Z

    if-eqz v4, :cond_6

    const/4 v0, 0x2

    const/4 v1, 0x2

    goto :goto_3

    :cond_6
    iget v4, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->storyId:I

    invoke-virtual {v11, v0, v1, v4}, Lorg/telegram/ui/Stories/StoriesController;->getUnreadState(JI)I

    move-result v0

    move v1, v0

    if-nez v0, :cond_7

    const/4 v0, 0x2

    goto :goto_3

    :cond_7
    const/4 v0, 0x1

    goto :goto_3

    :cond_8
    invoke-static {v11, v0, v1}, Lorg/telegram/ui/Stories/StoriesUtilities;->getPredictiveUnreadState(Lorg/telegram/ui/Stories/StoriesController;J)I

    move-result v0

    move v1, v0

    :goto_3
    iget v4, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->forceState:I

    if-eqz v4, :cond_9

    move v0, v4

    move v1, v0

    :cond_9
    iget v4, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->currentState:I

    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    if-eq v4, v0, :cond_d

    if-ne v4, v14, :cond_a

    const/4 v2, 0x1

    :cond_a
    if-ne v0, v14, :cond_b

    iput v1, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->animateFromUnreadState:I

    iput v7, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToProgressSegments:F

    :cond_b
    if-eqz v2, :cond_c

    iput v4, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->prevState:I

    iget v2, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->unreadState:I

    iput v2, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->prevUnreadState:I

    iput v0, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->currentState:I

    iput v7, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    goto :goto_4

    :cond_c
    iput v0, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->currentState:I

    iput v6, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    :cond_d
    :goto_4
    iput v1, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->unreadState:I

    iget-object v0, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->buttonBounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v4, 0x3da3d70a    # 0.08f

    if-eqz v0, :cond_e

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v0

    goto :goto_5

    :cond_e
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_5
    iget-boolean v2, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->showProgress:Z

    if-eq v2, v3, :cond_f

    if-eqz v3, :cond_f

    iput v6, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->sweepAngle:F

    iput-boolean v5, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->inc:Z

    :cond_f
    iput-boolean v3, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->showProgress:Z

    iget v2, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->currentState:I

    if-nez v2, :cond_10

    iget v2, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    cmpl-float v2, v2, v6

    if-nez v2, :cond_10

    iget-object v0, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v9, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/RectF;)V

    invoke-virtual {v9, v8}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    return-void

    :cond_10
    cmpl-float v2, v0, v6

    if-eqz v2, :cond_11

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Canvas;->save()I

    move-result v2

    iget-object v3, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {v8, v0, v0, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    move v4, v2

    goto :goto_6

    :cond_11
    const/4 v4, 0x0

    :goto_6
    iget v0, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    cmpl-float v2, v0, v6

    if-eqz v2, :cond_12

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v0

    :cond_12
    move/from16 v16, v0

    invoke-static/range {p5 .. p5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$100(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawInside:Z

    if-nez v0, :cond_13

    const/4 v0, 0x0

    goto :goto_7

    :cond_13
    iget v0, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->prevState:I

    iget v2, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->animateFromUnreadState:I

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/StoriesUtilities;->getInset(II)I

    move-result v0

    iget v2, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->currentState:I

    iget v3, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->animateFromUnreadState:I

    invoke-static {v2, v3}, Lorg/telegram/ui/Stories/StoriesUtilities;->getInset(II)I

    move-result v2

    iget v3, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    int-to-float v0, v0

    :goto_7
    cmpl-float v2, v0, v7

    if-nez v2, :cond_14

    iget-object v0, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v9, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/RectF;)V

    goto :goto_8

    :cond_14
    sget-object v2, Lorg/telegram/ui/Stories/StoriesUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v3, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {v2, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    invoke-virtual {v9, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/RectF;)V

    :goto_8
    iget v0, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->prevState:I

    const/high16 v17, 0x40a00000    # 5.0f

    const/high16 v18, 0x437f0000    # 255.0f

    if-ne v0, v12, :cond_15

    iget v0, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    cmpl-float v0, v0, v6

    if-nez v0, :cond_16

    :cond_15
    iget v0, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->currentState:I

    if-ne v0, v12, :cond_1b

    :cond_16
    if-ne v1, v15, :cond_17

    invoke-static/range {p3 .. p3}, Lorg/telegram/ui/Stories/StoriesUtilities;->getCloseFriendsPaint(Lorg/telegram/messenger/ImageReceiver;)Landroid/graphics/Paint;

    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->closeFriendsGradientTools:Lorg/telegram/ui/Components/GradientTools;

    goto :goto_9

    :cond_17
    invoke-static/range {p5 .. p5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$100(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)Z

    move-result v0

    invoke-static {v9, v0}, Lorg/telegram/ui/Stories/StoriesUtilities;->getUnreadCirclePaint(Lorg/telegram/messenger/ImageReceiver;Z)Landroid/graphics/Paint;

    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storiesGradientTools:[Lorg/telegram/ui/Components/GradientTools;

    invoke-static/range {p5 .. p5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$100(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)Z

    move-result v1

    aget-object v0, v0, v1

    :goto_9
    iget v1, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->prevState:I

    if-ne v1, v12, :cond_18

    iget v1, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    goto :goto_a

    :cond_18
    const/4 v1, 0x0

    :goto_a
    invoke-static/range {p5 .. p5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$100(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-boolean v2, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawInside:Z

    if-nez v2, :cond_19

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    goto :goto_b

    :cond_19
    const/4 v2, 0x0

    :goto_b
    if-eqz v1, :cond_1a

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v16

    add-float/2addr v2, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    iget v3, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->alpha:F

    mul-float v3, v3, v18

    sub-float v19, v6, v16

    mul-float v3, v3, v19

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_c

    :cond_1a
    iget-object v1, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    iget v3, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->alpha:F

    mul-float v3, v3, v18

    mul-float v3, v3, v16

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float v3, v6, v16

    mul-float v1, v1, v3

    add-float/2addr v2, v1

    :goto_c
    sget-object v1, Lorg/telegram/ui/Stories/StoriesUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v3, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {v1, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/ImageReceiver;->getParentView()Landroid/view/View;

    move-result-object v1

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    invoke-static {v8, v1, v10, v0, v13}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawCircleInternal(Landroid/graphics/Canvas;Landroid/view/View;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Landroid/graphics/Paint;Z)V

    :cond_1b
    iget v0, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->prevState:I

    const v19, 0x402ccccd    # 2.7f

    const/high16 v20, 0x40600000    # 3.5f

    const/16 v21, 0x0

    if-ne v0, v15, :cond_1c

    iget v1, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    cmpl-float v1, v1, v6

    if-nez v1, :cond_1d

    :cond_1c
    iget v1, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->currentState:I

    if-ne v1, v15, :cond_25

    :cond_1d
    if-ne v0, v15, :cond_1e

    iget v0, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_1e

    const/4 v5, 0x1

    :cond_1e
    invoke-static/range {p5 .. p5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$100(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-boolean v0, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isArchive:Z

    iget-object v1, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/StoriesUtilities;->checkStoryCellGrayPaint(ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storyCellGreyPaint:[Landroid/graphics/Paint;

    iget-boolean v1, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isArchive:Z

    aget-object v0, v0, v1

    :goto_d
    move-object v3, v0

    goto :goto_e

    :cond_1f
    iget-object v0, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesUtilities;->checkGrayPaint(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->grayPaint:Landroid/graphics/Paint;

    goto :goto_d

    :goto_e
    iget-boolean v0, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawSegments:Z

    if-eqz v0, :cond_20

    invoke-static/range {p5 .. p5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$100(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)Z

    move-result v0

    invoke-static {v9, v0}, Lorg/telegram/ui/Stories/StoriesUtilities;->getUnreadCirclePaint(Lorg/telegram/messenger/ImageReceiver;Z)Landroid/graphics/Paint;

    move-result-object v0

    iget v1, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->alpha:F

    mul-float v1, v1, v18

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-static/range {p3 .. p3}, Lorg/telegram/ui/Stories/StoriesUtilities;->getCloseFriendsPaint(Lorg/telegram/messenger/ImageReceiver;)Landroid/graphics/Paint;

    move-result-object v1

    iget v2, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->alpha:F

    mul-float v2, v2, v18

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2}, Lorg/telegram/ui/Stories/StoriesUtilities;->checkGrayPaint(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move-object/from16 v22, v0

    move-object/from16 v23, v1

    goto :goto_f

    :cond_20
    move-object/from16 v22, v21

    move-object/from16 v23, v22

    :goto_f
    iget-boolean v0, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawSegments:Z

    if-eqz v0, :cond_21

    invoke-static/range {p5 .. p5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$100(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-boolean v0, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawInside:Z

    if-nez v0, :cond_22

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    :goto_10
    neg-float v0, v0

    goto :goto_11

    :cond_21
    invoke-static/range {p5 .. p5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$100(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-boolean v0, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawInside:Z

    if-nez v0, :cond_22

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    goto :goto_10

    :cond_22
    const/4 v0, 0x0

    :goto_11
    if-eqz v5, :cond_23

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v16

    add-float/2addr v0, v1

    iget v1, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->alpha:F

    mul-float v1, v1, v18

    sub-float v2, v6, v16

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_12

    :cond_23
    iget v1, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->alpha:F

    mul-float v1, v1, v18

    mul-float v1, v1, v16

    float-to-int v1, v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float v2, v6, v16

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    :goto_12
    sget-object v1, Lorg/telegram/ui/Stories/StoriesUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v2, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    iget-boolean v0, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawSegments:Z

    if-eqz v0, :cond_24

    move-object/from16 v0, p2

    move-object v1, v11

    move-object/from16 v2, p3

    move-object v5, v3

    move-object/from16 v3, p5

    move/from16 v25, v4

    const v24, 0x3da3d70a    # 0.08f

    move-object v4, v5

    move-object/from16 v5, v22

    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v6, v23

    const/16 v22, 0x0

    move v7, v13

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawSegmentsInternal(Landroid/graphics/Canvas;Lorg/telegram/ui/Stories/StoriesController;Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)V

    goto :goto_13

    :cond_24
    move-object v5, v3

    move/from16 v25, v4

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    const v24, 0x3da3d70a    # 0.08f

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/ImageReceiver;->getParentView()Landroid/view/View;

    move-result-object v0

    invoke-static {v8, v0, v10, v5, v13}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawCircleInternal(Landroid/graphics/Canvas;Landroid/view/View;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Landroid/graphics/Paint;Z)V

    goto :goto_13

    :cond_25
    move/from16 v25, v4

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    const v24, 0x3da3d70a    # 0.08f

    :goto_13
    iget v0, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->prevState:I

    if-ne v0, v14, :cond_26

    iget v0, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    cmpl-float v0, v0, v15

    if-nez v0, :cond_27

    :cond_26
    iget v0, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->currentState:I

    if-ne v0, v14, :cond_32

    :cond_27
    iget v0, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->animateFromUnreadState:I

    if-ne v0, v12, :cond_28

    invoke-static/range {p5 .. p5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$100(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)Z

    move-result v0

    invoke-static {v9, v0}, Lorg/telegram/ui/Stories/StoriesUtilities;->getUnreadCirclePaint(Lorg/telegram/messenger/ImageReceiver;Z)Landroid/graphics/Paint;

    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storiesGradientTools:[Lorg/telegram/ui/Components/GradientTools;

    invoke-static/range {p5 .. p5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$100(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)Z

    move-result v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    :goto_14
    move-object v4, v0

    goto :goto_15

    :cond_28
    invoke-static/range {p5 .. p5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$100(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-boolean v0, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isArchive:Z

    iget-object v1, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/StoriesUtilities;->checkStoryCellGrayPaint(ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storyCellGreyPaint:[Landroid/graphics/Paint;

    iget-boolean v1, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isArchive:Z

    aget-object v0, v0, v1

    goto :goto_14

    :cond_29
    iget-object v0, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesUtilities;->checkGrayPaint(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->grayPaint:Landroid/graphics/Paint;

    goto :goto_14

    :goto_15
    mul-float v0, v16, v18

    float-to-int v0, v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-boolean v0, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawSegments:Z

    if-eqz v0, :cond_2a

    invoke-static/range {p5 .. p5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$100(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)Z

    move-result v0

    invoke-static {v9, v0}, Lorg/telegram/ui/Stories/StoriesUtilities;->getUnreadCirclePaint(Lorg/telegram/messenger/ImageReceiver;Z)Landroid/graphics/Paint;

    move-result-object v0

    iget v1, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->alpha:F

    mul-float v1, v1, v18

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-static/range {p3 .. p3}, Lorg/telegram/ui/Stories/StoriesUtilities;->getCloseFriendsPaint(Lorg/telegram/messenger/ImageReceiver;)Landroid/graphics/Paint;

    move-result-object v1

    iget v2, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->alpha:F

    mul-float v2, v2, v18

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2}, Lorg/telegram/ui/Stories/StoriesUtilities;->checkGrayPaint(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move-object v5, v0

    move-object v6, v1

    goto :goto_16

    :cond_2a
    move-object/from16 v5, v21

    move-object v6, v5

    :goto_16
    iget-boolean v0, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawSegments:Z

    if-eqz v0, :cond_2b

    invoke-static/range {p5 .. p5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$100(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-boolean v0, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawInside:Z

    if-nez v0, :cond_2c

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    :goto_17
    neg-float v7, v0

    goto :goto_18

    :cond_2b
    invoke-static/range {p5 .. p5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$100(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-boolean v0, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawInside:Z

    if-nez v0, :cond_2c

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    goto :goto_17

    :cond_2c
    const/4 v7, 0x0

    :goto_18
    iget v0, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->prevState:I

    if-ne v0, v14, :cond_2d

    iget v0, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    cmpl-float v0, v0, v15

    if-eqz v0, :cond_2d

    const/high16 v0, 0x40e00000    # 7.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v16

    add-float/2addr v7, v0

    iget v0, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->alpha:F

    mul-float v0, v0, v18

    sub-float v1, v15, v16

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_19

    :cond_2d
    iget v0, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->alpha:F

    mul-float v0, v0, v18

    mul-float v0, v0, v16

    float-to-int v0, v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sub-float v1, v15, v16

    mul-float v0, v0, v1

    add-float/2addr v7, v0

    :goto_19
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v1, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->originalAvatarRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {v0, v7, v7}, Landroid/graphics/RectF;->inset(FF)V

    iget-boolean v0, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawSegments:Z

    if-eqz v0, :cond_2f

    iget v1, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->currentState:I

    if-ne v1, v14, :cond_2f

    iget v1, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToProgressSegments:F

    cmpl-float v2, v1, v15

    if-eqz v2, :cond_2f

    add-float v1, v1, v24

    iput v1, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToProgressSegments:F

    cmpl-float v0, v1, v15

    if-lez v0, :cond_2e

    iput v15, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToProgressSegments:F

    :cond_2e
    iget v12, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSegments:F

    iget v0, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToProgressSegments:F

    sub-float v0, v15, v0

    iput v0, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSegments:F

    move-object/from16 v0, p2

    move-object v1, v11

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move v7, v13

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawSegmentsInternal(Landroid/graphics/Canvas;Lorg/telegram/ui/Stories/StoriesController;Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)V

    iput v12, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSegments:F

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/ImageReceiver;->getParentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/ImageReceiver;->invalidate()V

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/ImageReceiver;->getParentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_1b

    :cond_2f
    if-eqz v0, :cond_31

    invoke-static/range {p5 .. p5}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$000(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)J

    move-result-wide v0

    invoke-virtual {v11, v0, v1}, Lorg/telegram/ui/Stories/StoriesController;->getUnreadState(J)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_30

    move-object v4, v6

    goto :goto_1a

    :cond_30
    if-ne v0, v12, :cond_31

    move-object v4, v5

    :cond_31
    :goto_1a
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/ImageReceiver;->getParentView()Landroid/view/View;

    move-result-object v0

    invoke-static {v8, v10, v0, v4}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawProgress(Landroid/graphics/Canvas;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Landroid/view/View;Landroid/graphics/Paint;)V

    :cond_32
    :goto_1b
    invoke-virtual {v9, v8}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    iget v0, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    cmpl-float v1, v0, v15

    if-eqz v1, :cond_34

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshTime:F

    const/high16 v2, 0x437a0000    # 250.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    cmpl-float v0, v0, v15

    if-lez v0, :cond_33

    iput v15, v10, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSate:F

    :cond_33
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/ImageReceiver;->getParentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/ImageReceiver;->invalidate()V

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/ImageReceiver;->getParentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_34
    move/from16 v2, v25

    if-eqz v2, :cond_35

    invoke-virtual {v8, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_35
    return-void
.end method

.method private static drawCircleInternal(Landroid/graphics/Canvas;Landroid/view/View;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Landroid/graphics/Paint;Z)V
    .locals 7

    if-eqz p4, :cond_0

    sget-object p1, Lorg/telegram/ui/Stories/StoriesUtilities;->forumRect:Landroid/graphics/RectF;

    sget-object p2, Lorg/telegram/ui/Stories/StoriesUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    int-to-float p4, p4

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p4, p2}, Landroid/graphics/RectF;->inset(FF)V

    const/high16 p2, 0x41900000    # 18.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    int-to-float p4, p4

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0, p1, p4, p2, p3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    iget p1, p2, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToArc:F

    const/4 p2, 0x0

    const/high16 p4, 0x40000000    # 2.0f

    cmpl-float p2, p1, p2

    if-nez p2, :cond_1

    sget-object p1, Lorg/telegram/ui/Stories/StoriesUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float/2addr p1, p4

    invoke-virtual {p0, p2, v0, p1, p3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    sget-object v2, Lorg/telegram/ui/Stories/StoriesUtilities;->rectTmp:Landroid/graphics/RectF;

    div-float p2, p1, p4

    const/high16 p4, 0x43b40000    # 360.0f

    add-float v3, p2, p4

    sub-float v4, p4, p1

    const/4 v5, 0x0

    move-object v1, p0

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private static drawProgress(Landroid/graphics/Canvas;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 12

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$200(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)V

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    iget-boolean p2, p1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->inc:Z

    const/high16 v0, 0x43b40000    # 360.0f

    if-eqz p2, :cond_0

    sget-object v2, Lorg/telegram/ui/Stories/StoriesUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v3, p1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->globalAngle:F

    iget p2, p1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->sweepAngle:F

    mul-float v4, p2, v0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    sget-object v7, Lorg/telegram/ui/Stories/StoriesUtilities;->rectTmp:Landroid/graphics/RectF;

    iget p2, p1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->globalAngle:F

    add-float v8, p2, v0

    iget p2, p1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->sweepAngle:F

    const/high16 v0, -0x3c4c0000    # -360.0f

    mul-float v9, p2, v0

    const/4 v10, 0x0

    move-object v6, p0

    move-object v11, p3

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :goto_0
    const/4 p2, 0x0

    :goto_1
    const/16 v0, 0x10

    if-ge p2, v0, :cond_1

    int-to-float v0, p2

    const/high16 v1, 0x41b40000    # 22.5f

    mul-float v0, v0, v1

    const/high16 v2, 0x41200000    # 10.0f

    add-float/2addr v0, v2

    add-float/2addr v1, v0

    sub-float/2addr v1, v2

    sub-float v5, v1, v0

    sget-object v3, Lorg/telegram/ui/Stories/StoriesUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v1, p1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->globalAngle:F

    add-float v4, v1, v0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static drawSegment(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;FFLorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Z)V
    .locals 9

    if-eqz p6, :cond_0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p5

    const p6, 0x3ea3d70a    # 0.32f

    mul-float p5, p5, p6

    float-to-int p6, p3

    div-int/lit8 p6, p6, 0x5a

    mul-int/lit8 p6, p6, 0x5a

    add-int/lit8 p6, p6, 0x5a

    int-to-float p6, p6

    const/high16 v0, -0x3cb90000    # -199.0f

    add-float/2addr v0, p6

    sub-float/2addr p3, v0

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr p3, v1

    sub-float/2addr p4, v0

    div-float/2addr p4, v1

    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->forumRoundRectPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, p1, p5, p5, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    sget-object p5, Lorg/telegram/ui/Stories/StoriesUtilities;->forumRoundRectMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p5}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    invoke-virtual {p5, p6, v1, p1}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    invoke-virtual {v0, p5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    sget-object p1, Lorg/telegram/ui/Stories/StoriesUtilities;->forumRoundRectPathMeasure:Landroid/graphics/PathMeasure;

    const/4 p5, 0x0

    invoke-virtual {p1, v0, p5}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    invoke-virtual {p1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result p5

    sget-object p6, Lorg/telegram/ui/Stories/StoriesUtilities;->forumSegmentPath:Landroid/graphics/Path;

    invoke-virtual {p6}, Landroid/graphics/Path;->reset()V

    mul-float p3, p3, p5

    mul-float p5, p5, p4

    const/4 p4, 0x1

    invoke-virtual {p1, p3, p5, p6, p4}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    const/4 p1, 0x0

    invoke-virtual {p6, p1, p1}, Landroid/graphics/Path;->rLineTo(FF)V

    invoke-virtual {p0, p6, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    :cond_0
    iget-boolean p6, p5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isFirst:Z

    const/high16 v0, 0x40000000    # 2.0f

    if-nez p6, :cond_1

    iget-boolean v1, p5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isLast:Z

    if-nez v1, :cond_1

    const/high16 p6, 0x42b40000    # 90.0f

    cmpg-float p6, p3, p6

    if-gez p6, :cond_2

    goto :goto_0

    :cond_1
    iget-boolean v1, p5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isLast:Z

    if-eqz v1, :cond_3

    :cond_2
    iget p5, p5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToArc:F

    neg-float p6, p5

    div-float/2addr p6, v0

    const/high16 v1, 0x43340000    # 180.0f

    add-float v7, p6, v1

    div-float/2addr p5, v0

    add-float v8, p5, v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawArcExcludeArc(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;FFFF)V

    goto :goto_1

    :cond_3
    if-eqz p6, :cond_4

    :goto_0
    iget p5, p5, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToArc:F

    neg-float p6, p5

    div-float v6, p6, v0

    div-float v7, p5, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawArcExcludeArc(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;FFFF)V

    goto :goto_1

    :cond_4
    sub-float v3, p4, p3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :goto_1
    return-void
.end method

.method private static drawSegmentsInternal(Landroid/graphics/Canvas;Lorg/telegram/ui/Stories/StoriesController;Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)V
    .locals 24

    move-object/from16 v0, p1

    move-object/from16 v8, p3

    iget-object v1, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoriesUtilities;->checkGrayPaint(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-boolean v1, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isArchive:Z

    iget-object v2, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/Stories/StoriesUtilities;->checkStoryCellGrayPaint(ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iget-wide v1, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->crossfadeToDialog:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/StoriesController;->getUnreadState(J)I

    move-result v1

    goto :goto_1

    :cond_0
    invoke-static/range {p3 .. p3}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$000(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)J

    move-result-wide v1

    goto :goto_0

    :goto_1
    const/4 v9, 0x2

    const/4 v10, 0x1

    if-nez v1, :cond_1

    const/4 v2, 0x2

    goto :goto_2

    :cond_1
    const/4 v2, 0x1

    :goto_2
    iput v2, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->globalState:I

    invoke-static/range {p3 .. p3}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$000(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Stories/StoriesController;->getStories(J)Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static/range {p3 .. p3}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$000(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Stories/StoriesController;->getStoriesFromFullPeer(J)Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    move-result-object v2

    :cond_2
    move-object v11, v2

    iget-boolean v2, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawHiddenStoriesAsSegments:Z

    if-eqz v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Stories/StoriesController;->getHiddenList()Ljava/util/ArrayList;

    move-result-object v2

    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v12, v2

    goto :goto_5

    :cond_3
    if-eqz v11, :cond_5

    iget-object v2, v11, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v10, :cond_4

    goto :goto_4

    :cond_4
    iget-object v2, v11, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    goto :goto_3

    :cond_5
    :goto_4
    const/4 v12, 0x1

    :goto_5
    if-ne v1, v9, :cond_6

    invoke-static/range {p2 .. p2}, Lorg/telegram/ui/Stories/StoriesUtilities;->getCloseFriendsPaint(Lorg/telegram/messenger/ImageReceiver;)Landroid/graphics/Paint;

    sget-object v1, Lorg/telegram/ui/Stories/StoriesUtilities;->closeFriendsGradientTools:Lorg/telegram/ui/Components/GradientTools;

    :goto_6
    iget-object v1, v1, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    :goto_7
    move-object v13, v1

    goto :goto_8

    :cond_6
    if-ne v1, v10, :cond_7

    invoke-static/range {p3 .. p3}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$100(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)Z

    move-result v1

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lorg/telegram/ui/Stories/StoriesUtilities;->getUnreadCirclePaint(Lorg/telegram/messenger/ImageReceiver;Z)Landroid/graphics/Paint;

    sget-object v1, Lorg/telegram/ui/Stories/StoriesUtilities;->storiesGradientTools:[Lorg/telegram/ui/Components/GradientTools;

    invoke-static/range {p3 .. p3}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$100(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)Z

    move-result v2

    aget-object v1, v1, v2

    goto :goto_6

    :cond_7
    invoke-static/range {p3 .. p3}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$100(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lorg/telegram/ui/Stories/StoriesUtilities;->storyCellGreyPaint:[Landroid/graphics/Paint;

    iget-boolean v2, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isArchive:Z

    aget-object v1, v1, v2

    goto :goto_7

    :cond_8
    sget-object v1, Lorg/telegram/ui/Stories/StoriesUtilities;->grayPaint:Landroid/graphics/Paint;

    goto :goto_7

    :goto_8
    const/16 v14, 0xff

    const/high16 v15, 0x437f0000    # 255.0f

    const/high16 v16, 0x3f800000    # 1.0f

    if-gt v12, v10, :cond_a

    invoke-static/range {p3 .. p3}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$000(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/StoriesController;->hasUnreadStories(J)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object/from16 v7, p5

    goto :goto_9

    :cond_9
    move-object/from16 v7, p4

    :goto_9
    sget-object v9, Lorg/telegram/ui/Stories/StoriesUtilities;->rectTmp:Landroid/graphics/RectF;

    const/high16 v3, -0x3d4c0000    # -90.0f

    const/high16 v4, 0x42b40000    # 90.0f

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v7

    move-object/from16 v5, p3

    move/from16 v6, p7

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawSegment(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;FFLorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Z)V

    const/high16 v3, 0x42b40000    # 90.0f

    const/high16 v4, 0x43870000    # 270.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawSegment(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;FFLorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Z)V

    iget v0, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSegments:F

    cmpl-float v1, v0, v16

    if-eqz v1, :cond_16

    if-eq v7, v13, :cond_16

    sub-float v16, v16, v0

    mul-float v0, v16, v15

    float-to-int v0, v0

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v3, -0x3d4c0000    # -90.0f

    const/high16 v4, 0x42b40000    # 90.0f

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v13

    move-object/from16 v5, p3

    move/from16 v6, p7

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawSegment(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;FFLorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Z)V

    const/high16 v3, 0x42b40000    # 90.0f

    const/high16 v4, 0x43870000    # 270.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawSegment(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;FFLorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Z)V

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_13

    :cond_a
    int-to-float v1, v12

    const/high16 v2, 0x43b40000    # 360.0f

    div-float v17, v2, v1

    const/16 v1, 0x14

    if-le v12, v1, :cond_b

    const/4 v1, 0x3

    goto :goto_a

    :cond_b
    const/4 v1, 0x5

    :goto_a
    int-to-float v1, v1

    iget v2, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSegments:F

    mul-float v1, v1, v2

    cmpl-float v2, v1, v17

    if-lez v2, :cond_c

    const/4 v1, 0x0

    const/16 v18, 0x0

    goto :goto_b

    :cond_c
    move/from16 v18, v1

    :goto_b
    iget-boolean v1, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawHiddenStoriesAsSegments:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    const/4 v7, 0x0

    goto :goto_c

    :cond_d
    iget v1, v11, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->max_read_id:I

    iget-object v3, v0, Lorg/telegram/ui/Stories/StoriesController;->dialogIdToMaxReadId:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-static/range {p3 .. p3}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$000(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v2}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(JI)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v7, v1

    :goto_c
    const/4 v6, 0x0

    :goto_d
    if-ge v6, v12, :cond_16

    invoke-static/range {p3 .. p3}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->access$100(Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v1, Lorg/telegram/ui/Stories/StoriesUtilities;->storyCellGreyPaint:[Landroid/graphics/Paint;

    iget-boolean v2, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->isArchive:Z

    aget-object v1, v1, v2

    goto :goto_e

    :cond_e
    sget-object v1, Lorg/telegram/ui/Stories/StoriesUtilities;->grayPaint:Landroid/graphics/Paint;

    :goto_e
    iget-boolean v2, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawHiddenStoriesAsSegments:Z

    if-eqz v2, :cond_10

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Stories/StoriesController;->getHiddenList()Ljava/util/ArrayList;

    move-result-object v2

    add-int/lit8 v3, v12, -0x1

    sub-int/2addr v3, v6

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Stories/StoriesController;->getUnreadState(J)I

    move-result v2

    if-ne v2, v9, :cond_f

    goto :goto_10

    :cond_f
    if-ne v2, v10, :cond_12

    goto :goto_11

    :cond_10
    iget-object v2, v11, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v6, v2, :cond_11

    goto :goto_11

    :cond_11
    iget-object v2, v11, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-boolean v2, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->justUploaded:Z

    if-nez v2, :cond_13

    iget-object v2, v11, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v2, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    if-le v2, v7, :cond_12

    goto :goto_f

    :cond_12
    move-object v5, v1

    goto :goto_12

    :cond_13
    :goto_f
    iget-object v1, v11, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-boolean v1, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->close_friends:Z

    if-eqz v1, :cond_14

    :goto_10
    move-object/from16 v5, p6

    goto :goto_12

    :cond_14
    :goto_11
    move-object/from16 v5, p5

    :goto_12
    int-to-float v1, v6

    mul-float v1, v1, v17

    const/high16 v2, 0x42b40000    # 90.0f

    sub-float/2addr v1, v2

    add-float v2, v1, v17

    add-float v19, v1, v18

    sub-float v20, v2, v18

    sget-object v21, Lorg/telegram/ui/Stories/StoriesUtilities;->rectTmp:Landroid/graphics/RectF;

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    move-object v3, v5

    move/from16 v4, v19

    move-object v9, v5

    move/from16 v5, v20

    move/from16 v22, v6

    move-object/from16 v6, p3

    move/from16 v23, v7

    move/from16 v7, p7

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawSegment(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;FFLorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Z)V

    iget v1, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSegments:F

    cmpl-float v1, v1, v16

    if-eqz v1, :cond_15

    if-eq v9, v13, :cond_15

    invoke-virtual {v13}, Landroid/graphics/Paint;->getStrokeWidth()F

    iget v1, v8, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->progressToSegments:F

    sub-float v1, v16, v1

    mul-float v1, v1, v15

    float-to-int v1, v1

    invoke-virtual {v13, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    move-object v3, v13

    move/from16 v4, v19

    move/from16 v5, v20

    move-object/from16 v6, p3

    move/from16 v7, p7

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Stories/StoriesUtilities;->drawSegment(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;FFLorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;Z)V

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_15
    add-int/lit8 v6, v22, 0x1

    move/from16 v7, v23

    const/4 v9, 0x2

    goto/16 :goto_d

    :cond_16
    :goto_13
    return-void
.end method

.method public static ensureStoryFileLoaded(Lorg/telegram/tgnet/tl/TL_stories$PeerStories;Ljava/lang/Runnable;)Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v2

    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    iget-wide v4, v4, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    :cond_0
    move-object/from16 v2, p1

    goto/16 :goto_6

    :cond_1
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-object v3, v2, Lorg/telegram/ui/Stories/StoriesController;->dialogIdToMaxReadId:Lorg/telegram/messenger/support/LongSparseIntArray;

    iget-object v4, v0, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v4}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(J)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    iget-object v6, v0, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    iget-object v6, v0, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v6, v6, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    if-le v6, v3, :cond_2

    iget-object v3, v0, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    move-object v3, v1

    :goto_1
    if-nez v3, :cond_4

    iget-object v3, v0, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    :cond_4
    iget-object v5, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const v6, 0x7fffffff

    const-string v7, ""

    const/4 v8, 0x1

    if-eqz v5, :cond_6

    iget-object v9, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v9, :cond_6

    sget v5, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v5

    iget-object v9, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v5, v9, v7, v4}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    return-object v1

    :cond_5
    sget v5, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v5

    iget-object v9, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v5, v9, v7, v8}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_8

    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "."

    invoke-virtual {v7, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_8

    new-instance v9, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".temp"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v9, v10, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v5, v9, v11

    if-lez v5, :cond_8

    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    nop

    goto :goto_3

    :cond_6
    if-eqz v5, :cond_7

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    goto :goto_2

    :cond_7
    move-object v5, v1

    :goto_2
    if-eqz v5, :cond_c

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    if-eqz v5, :cond_c

    invoke-static {v5, v6}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v5

    sget v9, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v9

    invoke-virtual {v9, v5, v7, v4}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    return-object v1

    :cond_8
    :goto_3
    new-instance v15, Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v9

    invoke-direct {v15, v2, v9, v10, v1}, Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;-><init>(Lorg/telegram/ui/Stories/StoriesController;JLorg/telegram/ui/Stories/StoriesUtilities$1;)V

    new-instance v0, Lorg/telegram/ui/Stories/StoriesUtilities$$ExternalSyntheticLambda0;

    move-object/from16 v2, p1

    invoke-direct {v0, v15, v2}, Lorg/telegram/ui/Stories/StoriesUtilities$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;Ljava/lang/Runnable;)V

    iput-object v0, v15, Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;->runnable:Ljava/lang/Runnable;

    new-array v0, v8, [Ljava/lang/Runnable;

    new-instance v2, Lorg/telegram/ui/Stories/StoriesUtilities$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, v15}, Lorg/telegram/ui/Stories/StoriesUtilities$$ExternalSyntheticLambda1;-><init>([Ljava/lang/Runnable;Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;)V

    aput-object v2, v0, v4

    const-wide/16 v4, 0xbb8

    invoke-static {v2, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    new-instance v2, Lorg/telegram/ui/Stories/StoriesUtilities$2;

    invoke-direct {v2, v0, v15}, Lorg/telegram/ui/Stories/StoriesUtilities$2;-><init>([Ljava/lang/Runnable;Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;)V

    iput-object v2, v15, Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v8}, Lorg/telegram/messenger/ImageReceiver;->setAllowLoadingOnAttachedOnly(Z)V

    iget-object v0, v15, Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    invoke-static {}, Lorg/telegram/ui/Stories/StoriesUtilities;->getStoryImageFilter()Ljava/lang/String;

    move-result-object v9

    iget-object v0, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_9

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_9

    iget-object v5, v15, Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_pframe"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v13, 0x0

    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    move-object v14, v3

    move-object v2, v15

    move v15, v0

    invoke-virtual/range {v5 .. v15}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_5

    :cond_9
    move-object v2, v15

    if-eqz v0, :cond_a

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    goto :goto_4

    :cond_a
    move-object v0, v1

    :goto_4
    if-eqz v0, :cond_b

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    if-eqz v4, :cond_b

    invoke-static {v4, v6}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    iget-object v5, v2, Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v1, v0}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v8

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    move-object/from16 v16, v3

    invoke-virtual/range {v5 .. v17}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    :goto_5
    return-object v2

    :cond_b
    iget-object v0, v2, Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-object v1

    :cond_c
    move-object/from16 v2, p1

    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    return-object v1

    :goto_6
    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    return-object v1
.end method

.method public static getCloseFriendsPaint(Lorg/telegram/messenger/ImageReceiver;)Landroid/graphics/Paint;
    .locals 4

    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->closeFriendsGradientTools:Lorg/telegram/ui/Components/GradientTools;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Components/GradientTools;

    invoke-direct {v0}, Lorg/telegram/ui/Components/GradientTools;-><init>()V

    sput-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->closeFriendsGradientTools:Lorg/telegram/ui/Components/GradientTools;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Components/GradientTools;->isDiagonal:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Components/GradientTools;->isRotate:Z

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle_closeFriends1:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle_closeFriends2:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/GradientTools;->setColors(II)V

    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->closeFriendsGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    const v1, 0x40133333    # 2.3f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->closeFriendsGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->closeFriendsGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :cond_0
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->closeFriendsGradientTools:Lorg/telegram/ui/Components/GradientTools;

    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getImageX2()F

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result p0

    invoke-virtual {v0, v1, v2, v3, p0}, Lorg/telegram/ui/Components/GradientTools;->setBounds(FFFF)V

    sget-object p0, Lorg/telegram/ui/Stories/StoriesUtilities;->closeFriendsGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object p0, p0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static getErrorPaint(Landroid/graphics/RectF;)Landroid/graphics/Paint;
    .locals 4

    .line 0
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Components/GradientTools;

    invoke-direct {v0}, Lorg/telegram/ui/Components/GradientTools;-><init>()V

    sput-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Components/GradientTools;->isDiagonal:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Components/GradientTools;->isRotate:Z

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_color_orange:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-static {v0, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    sget-object v2, Lorg/telegram/ui/Stories/StoriesUtilities;->errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Components/GradientTools;->setColors(II)V

    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    const v1, 0x40133333    # 2.3f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :cond_0
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget v1, p0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/graphics/RectF;->top:F

    iget v3, p0, Landroid/graphics/RectF;->right:F

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v2, v3, p0}, Lorg/telegram/ui/Components/GradientTools;->setBounds(FFFF)V

    sget-object p0, Lorg/telegram/ui/Stories/StoriesUtilities;->errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object p0, p0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static getErrorPaint(Lorg/telegram/messenger/ImageReceiver;)Landroid/graphics/Paint;
    .locals 4

    .line 0
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/Components/GradientTools;

    invoke-direct {v0}, Lorg/telegram/ui/Components/GradientTools;-><init>()V

    sput-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Components/GradientTools;->isDiagonal:Z

    iput-boolean v1, v0, Lorg/telegram/ui/Components/GradientTools;->isRotate:Z

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_color_orange:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-static {v0, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    sget-object v2, Lorg/telegram/ui/Stories/StoriesUtilities;->errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Components/GradientTools;->setColors(II)V

    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    const v1, 0x40133333    # 2.3f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object v0, v0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :cond_0
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getImageX2()F

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result p0

    invoke-virtual {v0, v1, v2, v3, p0}, Lorg/telegram/ui/Components/GradientTools;->setBounds(FFFF)V

    sget-object p0, Lorg/telegram/ui/Stories/StoriesUtilities;->errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

    iget-object p0, p0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static getExpiredStoryDrawable()Landroid/graphics/drawable/Drawable;
    .locals 6

    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->expiredStoryDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0x168

    const/16 v2, 0xb4

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/text/TextPaint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/TextPaint;-><init>(I)V

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/high16 v3, -0x1000000

    const/16 v4, 0x64

    invoke-static {v3, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const-string v3, "expired"

    const/high16 v4, 0x42ac0000    # 86.0f

    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {v1, v3, v5, v4, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const-string v3, "story"

    const/high16 v4, 0x42d40000    # 106.0f

    invoke-virtual {v1, v3, v5, v4, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    sput-object v1, Lorg/telegram/ui/Stories/StoriesUtilities;->expiredStoryDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->expiredStoryDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private static getInset(II)I
    .locals 1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    move p0, p1

    :cond_0
    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    const/high16 p0, 0x40400000    # 3.0f

    :goto_0
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p0

    return p0

    :cond_1
    const/4 p1, 0x1

    if-ne p0, p1, :cond_2

    const/high16 p0, 0x40800000    # 4.0f

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static getPredictiveUnreadState(Lorg/telegram/ui/Stories/StoriesController;J)I
    .locals 7

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    return v0

    :cond_0
    const/4 v3, 0x2

    const/4 v4, 0x1

    cmp-long v5, p1, v1

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    if-lez v5, :cond_3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    iget-wide v5, v2, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v2, p1, v5

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$User;->stories_max_id:I

    if-lez v2, :cond_2

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$User;->stories_unavailable:Z

    if-nez v2, :cond_2

    iget-object p0, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogIdToMaxReadId:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(JI)I

    move-result p0

    iget p1, v1, Lorg/telegram/tgnet/TLRPC$User;->stories_max_id:I

    if-le p1, p0, :cond_1

    return v4

    :cond_1
    return v3

    :cond_2
    return v0

    :cond_3
    neg-long v5, p1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    if-eqz v1, :cond_5

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$Chat;->stories_max_id:I

    if-lez v2, :cond_5

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$Chat;->stories_unavailable:Z

    if-nez v2, :cond_5

    iget-object p0, p0, Lorg/telegram/ui/Stories/StoriesController;->dialogIdToMaxReadId:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(JI)I

    move-result p0

    iget p1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->stories_max_id:I

    if-le p1, p0, :cond_4

    return v4

    :cond_4
    return v3

    :cond_5
    return v0
.end method

.method public static getStoryImageFilter()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRealScreenSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRealScreenSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUnreadCirclePaint(Lorg/telegram/messenger/ImageReceiver;Z)Landroid/graphics/Paint;
    .locals 4

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoriesUtilities;->checkStoriesGradientTools(Z)V

    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storiesGradientTools:[Lorg/telegram/ui/Components/GradientTools;

    aget-object v0, v0, p1

    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getImageX2()F

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result p0

    invoke-virtual {v0, v1, v2, v3, p0}, Lorg/telegram/ui/Components/GradientTools;->setBounds(FFFF)V

    sget-object p0, Lorg/telegram/ui/Stories/StoriesUtilities;->storiesGradientTools:[Lorg/telegram/ui/Components/GradientTools;

    aget-object p0, p0, p1

    iget-object p0, p0, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static getUploadingStr(Landroid/widget/TextView;ZZ)Ljava/lang/CharSequence;
    .locals 4

    if-eqz p2, :cond_0

    sget p2, Lorg/telegram/messenger/R$string;->StoryEditing:I

    :goto_0
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_0
    sget p2, Lorg/telegram/messenger/R$string;->UploadingStory:I

    goto :goto_0

    :goto_1
    const-string v0, "\u2026"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {p2}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Stories/UploadingDotsSpannable;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/UploadingDotsSpannable;-><init>()V

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, p0, p1}, Lorg/telegram/ui/Stories/UploadingDotsSpannable;->setParent(Landroid/view/View;Z)V

    :cond_1
    return-object p2
.end method

.method public static hasExpiredViews(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    iget p0, p0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->expire_date:I

    const v2, 0x15180

    add-int/2addr p0, v2

    if-le v1, p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isExpired(ILorg/telegram/tgnet/tl/TL_stories$StoryItem;)Z
    .locals 0

    invoke-static {p0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result p0

    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->expire_date:I

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$ensureStoryFileLoaded$0(Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;->access$400(Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static synthetic lambda$ensureStoryFileLoaded$1([Ljava/lang/Runnable;Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, p0, v0

    iget-object p0, p1, Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;->runnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    iget-object p0, p1, Lorg/telegram/ui/Stories/StoriesUtilities$EnsureStoryFileLoadedObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    :cond_0
    return-void
.end method

.method public static setImage(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V
    .locals 1

    .line 0
    const-string v0, "320_320"

    invoke-static {p0, p1, v0}, Lorg/telegram/ui/Stories/StoriesUtilities;->setImage(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/lang/String;)V

    return-void
.end method

.method public static setImage(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/lang/String;)V
    .locals 15

    .line 0
    move-object v13, p0

    move-object/from16 v14, p1

    if-nez v14, :cond_0

    return-void

    :cond_0
    iget-object v0, v14, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const v1, 0x7fffffff

    if-eqz v0, :cond_1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_1

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    iget-object v1, v14, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0, v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    iget-object v0, v14, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->createStripedBitmap(Ljava/util/ArrayList;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object/from16 v2, p2

    move-object/from16 v9, p1

    invoke-virtual/range {v0 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    new-instance v0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;

    invoke-direct {v0, v14}, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;-><init>(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/ImageReceiver;->addDecorator(Lorg/telegram/messenger/ImageReceiver$Decorator;)V

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_2

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported;

    if-eqz v0, :cond_3

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0xa

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, -0x1

    const v2, 0x3e4ccccd    # 0.2f

    const/high16 v3, -0x1000000

    invoke-static {v3, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;

    invoke-direct {v0, v14}, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;-><init>(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->createStripedBitmap(Ljava/util/ArrayList;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v0, p0

    move-object/from16 v4, p2

    move-object/from16 v11, p1

    invoke-virtual/range {v0 .. v12}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    new-instance v0, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;

    invoke-direct {v0, v14}, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;-><init>(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    :goto_2
    return-void
.end method

.method public static setImage(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/ui/Stories/StoriesController$UploadingStory;)V
    .locals 11

    .line 0
    iget-object v0, p1, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->firstFramePath:Ljava/lang/String;

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v2, "320_180"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_1

    :cond_0
    iget-object p1, p1, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    goto :goto_0

    :goto_1
    return-void
.end method

.method public static setStoryMiniImage(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V
    .locals 13

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/16 v2, 0x3e8

    if-eqz v1, :cond_1

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0, v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->createStripedBitmap(Ljava/util/ArrayList;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v10, 0x0

    const-string v2, "100_100"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v9, p1

    invoke-virtual/range {v0 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->createStripedBitmap(Ljava/util/ArrayList;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v4, "100_100"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v0, p0

    move-object v11, p1

    invoke-virtual/range {v0 .. v12}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    :goto_0
    return-void
.end method

.method public static setThumbImage(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;II)V
    .locals 15

    move-object/from16 v11, p1

    move/from16 v0, p2

    move/from16 v1, p3

    iget-object v2, v11, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const-string v3, "_"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v2, :cond_0

    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v7, :cond_0

    iget-object v2, v7, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v2, v7, v5, v6, v4}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v2

    iget-object v4, v11, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2, v4}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v11, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->createStripedBitmap(Ljava/util/ArrayList;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v12, 0x0

    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    move-wide v6, v12

    move-object/from16 v9, p1

    invoke-virtual/range {v0 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_1

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    goto :goto_0

    :cond_1
    move-object v2, v6

    :goto_0
    if-eqz v2, :cond_2

    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    if-eqz v7, :cond_2

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {v7, v8, v5, v6, v4}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v4

    invoke-static {v4, v2}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->createStripedBitmap(Ljava/util/ArrayList;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const-wide/16 v13, 0x0

    move-object v0, p0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v8

    move-wide v8, v13

    move-object/from16 v11, p1

    invoke-virtual/range {v0 .. v12}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    :goto_1
    return-void
.end method

.method public static updateColors()V
    .locals 3

    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->closeFriendsGradientTools:Lorg/telegram/ui/Components/GradientTools;

    if-eqz v0, :cond_0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle_closeFriends1:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle_closeFriends2:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/GradientTools;->setColors(II)V

    :cond_0
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storiesGradientTools:[Lorg/telegram/ui/Components/GradientTools;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle_dialog1:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle_dialog2:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/GradientTools;->setColors(II)V

    :cond_1
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->storiesGradientTools:[Lorg/telegram/ui/Components/GradientTools;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle1:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_stories_circle2:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/GradientTools;->setColors(II)V

    :cond_2
    sget-object v0, Lorg/telegram/ui/Stories/StoriesUtilities;->errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

    if-eqz v0, :cond_3

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_color_orange:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-static {v0, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    sget-object v2, Lorg/telegram/ui/Stories/StoriesUtilities;->errorGradientTools:Lorg/telegram/ui/Components/GradientTools;

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Components/GradientTools;->setColors(II)V

    :cond_3
    return-void
.end method
