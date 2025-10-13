.class public abstract Lorg/telegram/ui/Stories/ProfileStoriesView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;
    }
.end annotation


# instance fields
.field private actionBarProgress:F

.field private attached:Z

.field private final avatarContainer:Landroid/view/View;

.field private final avatarImage:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

.field private bounceScale:F

.field private final circles:Ljava/util/ArrayList;

.field private final clipOutAvatar:Landroid/graphics/Paint;

.field private final clipPath:Landroid/graphics/Path;

.field private count:I

.field private final currentAccount:I

.field private cy:F

.field private final dialogId:J

.field private expandProgress:F

.field private expandRight:F

.field private expandRightPad:Z

.field private final expandRightPadAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

.field private expandY:F

.field private final forumRoundRectMatrix:Landroid/graphics/Matrix;

.field private final forumRoundRectPath:Landroid/graphics/Path;

.field private final forumRoundRectPathMeasure:Landroid/graphics/PathMeasure;

.field private final forumSegmentPath:Landroid/graphics/Path;

.field private fragmentTransitionProgress:F

.field private final gradientTools:Lorg/telegram/ui/Stories/StoriesUtilities$StoryGradientTools;

.field private final isTopic:Z

.field private lastUploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

.field private left:F

.field private mainCircle:Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

.field private newStoryBounce:Landroid/animation/ValueAnimator;

.field private newStoryBounceT:F

.field private onLongPressRunnable:Ljava/lang/Runnable;

.field paint:Landroid/graphics/Paint;

.field private peerStories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

.field private progressIsDone:Z

.field private progressToInsets:F

.field private final progressToUploading:Lorg/telegram/ui/Components/AnimatedFloat;

.field private progressWasDrawn:Z

.field private final provider:Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;

.field private radialProgress:Lorg/telegram/ui/Components/RadialProgress;

.field private final readPaint:Landroid/graphics/Paint;

.field private readPaintAlpha:I

.field private final rect1:Landroid/graphics/RectF;

.field private final rect2:Landroid/graphics/RectF;

.field private final rect3:Landroid/graphics/RectF;

.field private right:F

.field private final rightAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final segmentsCountAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final segmentsUnreadCountAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

.field storiesController:Lorg/telegram/ui/Stories/StoriesController;

.field private tapTime:J

.field private tapX:F

.field private tapY:F

.field private final titleDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field private unreadCount:I

.field private uploadingStoriesCount:I

.field w:F

.field private final whitePaint:Landroid/graphics/Paint;


# direct methods
.method public static synthetic $r8$lambda$AmbJGordIoaqtAGHuhomGEcgJqc(Lorg/telegram/ui/Stories/ProfileStoriesView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/ProfileStoriesView;->lambda$vibrateNewStory$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$JQNPIPP51-ie698WId-XQXlPmQs(Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/ProfileStoriesView;->lambda$dispatchDraw$2(Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Pl8F927pxcrAD7lBvSRsjTu6NK4(Lorg/telegram/ui/Stories/ProfileStoriesView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/ProfileStoriesView;->lambda$animateBounce$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T_jv_EQWMPmTU516gBHI3Rx1rWQ(Lorg/telegram/ui/Stories/ProfileStoriesView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/ProfileStoriesView;->lambda$new$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$vHRaq9wyhDGyqt31tiC8FhEpfi8(Lorg/telegram/ui/Stories/ProfileStoriesView;[ZLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/ProfileStoriesView;->lambda$animateNewStory$1([ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IJZLandroid/view/View;Lorg/telegram/ui/ProfileActivity$AvatarImageView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p8

    invoke-direct/range {p0 .. p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v9, Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v9, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaint:Landroid/graphics/Paint;

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v11, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->whitePaint:Landroid/graphics/Paint;

    new-instance v12, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/4 v13, 0x0

    invoke-direct {v12, v13, v10, v10}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    iput-object v12, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->titleDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v14, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->clipOutAvatar:Landroid/graphics/Paint;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->paint:Landroid/graphics/Paint;

    const/high16 v15, 0x3f800000    # 1.0f

    iput v15, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->bounceScale:F

    iput v15, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressToInsets:F

    new-instance v0, Lorg/telegram/ui/Stories/StoriesUtilities$StoryGradientTools;

    invoke-direct {v0, v7, v13}, Lorg/telegram/ui/Stories/StoriesUtilities$StoryGradientTools;-><init>(Landroid/view/View;Z)V

    iput-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->gradientTools:Lorg/telegram/ui/Stories/StoriesUtilities$StoryGradientTools;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect1:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect3:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->clipPath:Landroid/graphics/Path;

    new-instance v6, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v16, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1e0

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v13, v6

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v13, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->segmentsCountAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v13, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v4, 0xf0

    move-object v0, v13

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v13, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->segmentsUnreadCountAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v13, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v4, 0x96

    move-object v0, v13

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v13, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressToUploading:Lorg/telegram/ui/Components/AnimatedFloat;

    iput v15, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->newStoryBounceT:F

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->forumRoundRectPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->forumRoundRectMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->forumRoundRectPathMeasure:Landroid/graphics/PathMeasure;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->forumSegmentPath:Landroid/graphics/Path;

    new-instance v13, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v4, 0x15e

    move-object v0, v13

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v13, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandRightPadAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v13, Lorg/telegram/ui/Components/AnimatedFloat;

    move-object v0, v13

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v13, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rightAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v0, Lorg/telegram/ui/Stories/ProfileStoriesView$3;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Stories/ProfileStoriesView$3;-><init>(Lorg/telegram/ui/Stories/ProfileStoriesView;)V

    iput-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->provider:Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;

    new-instance v0, Lorg/telegram/ui/Stories/ProfileStoriesView$$ExternalSyntheticLambda1;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Stories/ProfileStoriesView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/ProfileStoriesView;)V

    iput-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->onLongPressRunnable:Ljava/lang/Runnable;

    move/from16 v0, p2

    iput v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->currentAccount:I

    move-wide/from16 v1, p3

    iput-wide v1, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    move/from16 v1, p5

    iput-boolean v1, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->isTopic:Z

    move-object/from16 v1, p6

    iput-object v1, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarContainer:Landroid/view/View;

    move-object/from16 v1, p7

    iput-object v1, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarImage:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    const v0, 0x5affffff

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v9}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iput v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaintAlpha:I

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v12, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x140

    const v5, 0x3ecccccd    # 0.4f

    move-object/from16 p1, v12

    move/from16 p2, v5

    move-wide/from16 p3, v1

    move-wide/from16 p5, v3

    move-object/from16 p7, v16

    invoke-virtual/range {p1 .. p7}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v12, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    invoke-static {v1, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v12, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    invoke-virtual {v12, v10}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setEllipsizeByGradient(Z)V

    invoke-virtual {v12, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v14, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v1, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->paint:Landroid/graphics/Paint;

    const v2, 0x40151eb8    # 2.33f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x0

    invoke-direct {v7, v0, v0}, Lorg/telegram/ui/Stories/ProfileStoriesView;->updateStories(ZZ)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Stories/ProfileStoriesView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->attached:Z

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Stories/ProfileStoriesView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/ProfileStoriesView;->vibrateNewStory()V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Stories/ProfileStoriesView;Landroid/graphics/Canvas;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/ProfileStoriesView;->clipCircle(Landroid/graphics/Canvas;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)V

    return-void
.end method

.method static synthetic access$202(Lorg/telegram/ui/Stories/ProfileStoriesView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->newStoryBounceT:F

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Stories/ProfileStoriesView;)Lorg/telegram/ui/ProfileActivity$AvatarImageView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarImage:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    return-object p0
.end method

.method static synthetic access$402(Lorg/telegram/ui/Stories/ProfileStoriesView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->bounceScale:F

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/Stories/ProfileStoriesView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Stories/ProfileStoriesView;)Lorg/telegram/ui/Components/RadialProgress;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Stories/ProfileStoriesView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Stories/ProfileStoriesView;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/ProfileStoriesView;->nearest(Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Stories/ProfileStoriesView;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/ProfileStoriesView;->updateStories(ZZ)V

    return-void
.end method

.method private animateBounce()V
    .locals 6

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v3, v1, [F

    fill-array-data v3, :array_1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v4}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Lorg/telegram/ui/Stories/ProfileStoriesView$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Stories/ProfileStoriesView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/ProfileStoriesView;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    new-instance v1, Lorg/telegram/ui/Stories/ProfileStoriesView$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/ProfileStoriesView$2;-><init>(Lorg/telegram/ui/Stories/ProfileStoriesView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f866666    # 1.05f
    .end array-data

    :array_1
    .array-data 4
        0x3f866666    # 1.05f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private clipCircle(Landroid/graphics/Canvas;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)V
    .locals 8

    if-nez p3, :cond_0

    return-void

    :cond_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v1, p3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const v1, 0x3fd47ae1    # 1.66f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    iget v2, p3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedScale:F

    mul-float v1, v1, v2

    neg-float v1, v1

    invoke-virtual {v0, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v1, p3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object p3, p3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p3, v2

    iget-object v3, p2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v2

    iget-object v5, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    const/high16 v5, 0x43b40000    # 360.0f

    const/high16 v6, 0x43340000    # 180.0f

    cmpl-float v7, v1, v3

    if-lez v7, :cond_1

    sub-float/2addr v1, p3

    add-float p3, v3, v4

    add-float/2addr v1, p3

    div-float/2addr v1, v2

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p3

    div-float/2addr p3, v4

    float-to-double v3, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->acos(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float p3, v3

    iget-object v1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->clipPath:Landroid/graphics/Path;

    add-float/2addr v6, p3

    neg-float v3, p3

    mul-float v3, v3, v2

    invoke-virtual {v1, v0, v6, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->clipPath:Landroid/graphics/Path;

    iget-object p2, p2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    mul-float v2, v2, p3

    sub-float/2addr v5, v2

    invoke-virtual {v0, p2, p3, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto :goto_0

    :cond_1
    add-float/2addr v1, p3

    sub-float p3, v3, v4

    add-float/2addr v1, p3

    div-float/2addr v1, v2

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p3

    div-float/2addr p3, v4

    float-to-double v3, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->acos(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float p3, v3

    iget-object v1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->clipPath:Landroid/graphics/Path;

    neg-float v3, p3

    mul-float v2, v2, p3

    invoke-virtual {v1, v0, v3, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->clipPath:Landroid/graphics/Path;

    iget-object p2, p2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    sub-float/2addr v6, p3

    sub-float/2addr v5, v2

    neg-float p3, v5

    invoke-virtual {v0, p2, v6, p3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object p2, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    return-void
.end method

.method private drawArc(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    .locals 3

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iget-wide v1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/ChatObject;->isForum(IJ)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p5

    const v0, 0x3ea3d70a    # 0.32f

    mul-float p5, p5, v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43b40000    # 360.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p1, p2, p5, p5, p6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    add-float/2addr p3, p4

    sub-float p4, p3, p4

    float-to-int v0, p3

    div-int/lit8 v0, v0, 0x5a

    mul-int/lit8 v0, v0, 0x5a

    int-to-float v0, v0

    const/high16 v2, -0x3cb90000    # -199.0f

    add-float/2addr v2, v0

    sub-float/2addr p3, v2

    div-float/2addr p3, v1

    sub-float/2addr p4, v2

    div-float/2addr p4, v1

    iget-object v1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->forumRoundRectPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    iget-object v1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->forumRoundRectPath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, p2, p5, p5, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object p5, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->forumRoundRectMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p5}, Landroid/graphics/Matrix;->reset()V

    iget-object p5, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->forumRoundRectMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    invoke-virtual {p5, v0, v1, p2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object p2, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->forumRoundRectPath:Landroid/graphics/Path;

    iget-object p5, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->forumRoundRectMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, p5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->forumRoundRectPathMeasure:Landroid/graphics/PathMeasure;

    iget-object p5, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->forumRoundRectPath:Landroid/graphics/Path;

    const/4 v0, 0x0

    invoke-virtual {p2, p5, v0}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->forumRoundRectPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {p2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result p2

    iget-object p5, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->forumSegmentPath:Landroid/graphics/Path;

    invoke-virtual {p5}, Landroid/graphics/Path;->reset()V

    iget-object p5, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->forumRoundRectPathMeasure:Landroid/graphics/PathMeasure;

    mul-float p3, p3, p2

    mul-float p2, p2, p4

    iget-object p4, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->forumSegmentPath:Landroid/graphics/Path;

    const/4 v0, 0x1

    invoke-virtual {p5, p3, p2, p4, v0}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    iget-object p2, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->forumSegmentPath:Landroid/graphics/Path;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p3}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object p2, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->forumSegmentPath:Landroid/graphics/Path;

    invoke-virtual {p1, p2, p6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private drawArcs(Landroid/graphics/Canvas;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Landroid/graphics/Paint;)V
    .locals 20

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    goto/16 :goto_7

    :cond_0
    const/high16 v3, 0x43b40000    # 360.0f

    const/high16 v4, 0x43340000    # 180.0f

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v0, :cond_8

    if-eqz v2, :cond_8

    iget-object v6, v0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    iget-object v0, v0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v5

    iget-object v7, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    iget-object v8, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    div-float/2addr v8, v5

    iget-object v9, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerX()F

    move-result v9

    iget-object v2, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v5

    const/4 v10, 0x0

    const/4 v11, 0x1

    cmpl-float v12, v6, v7

    if-lez v12, :cond_1

    const/4 v12, 0x1

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    :goto_0
    if-eqz v12, :cond_2

    sub-float/2addr v6, v0

    add-float v0, v7, v8

    :goto_1
    add-float/2addr v6, v0

    div-float/2addr v6, v5

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v8

    float-to-double v13, v0

    invoke-static {v13, v14}, Ljava/lang/Math;->acos(D)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v13

    double-to-float v0, v13

    goto :goto_2

    :cond_2
    add-float/2addr v6, v0

    sub-float v0, v7, v8

    goto :goto_1

    :goto_2
    cmpl-float v6, v9, v7

    if-lez v6, :cond_3

    const/4 v10, 0x1

    :cond_3
    if-eqz v10, :cond_4

    sub-float/2addr v9, v2

    add-float v2, v7, v8

    :goto_3
    add-float/2addr v9, v2

    div-float/2addr v9, v5

    sub-float/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v8

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v2, v6

    goto :goto_4

    :cond_4
    add-float/2addr v9, v2

    sub-float v2, v7, v8

    goto :goto_3

    :goto_4
    if-eqz v12, :cond_5

    if-eqz v10, :cond_5

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v16

    iget-object v15, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    mul-float v5, v5, v16

    sub-float v17, v3, v5

    const/16 v18, 0x0

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    :goto_5
    move-object/from16 v19, p5

    invoke-direct/range {v13 .. v19}, Lorg/telegram/ui/Stories/ProfileStoriesView;->drawArc(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_8

    :cond_5
    if-eqz v12, :cond_6

    iget-object v7, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    add-float v8, v2, v4

    add-float v3, v0, v2

    sub-float v9, v4, v3

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v11, p5

    invoke-direct/range {v5 .. v11}, Lorg/telegram/ui/Stories/ProfileStoriesView;->drawArc(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v15, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    sub-float/2addr v4, v2

    sub-float v17, v4, v0

    const/16 v18, 0x0

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move/from16 v16, v0

    goto :goto_5

    :cond_6
    if-eqz v10, :cond_7

    iget-object v7, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    add-float v8, v0, v4

    add-float v3, v2, v0

    sub-float v9, v4, v3

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v11, p5

    invoke-direct/range {v5 .. v11}, Lorg/telegram/ui/Stories/ProfileStoriesView;->drawArc(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v15, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    sub-float/2addr v4, v2

    sub-float v17, v4, v0

    const/16 v18, 0x0

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move/from16 v16, v2

    goto :goto_5

    :cond_7
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :goto_6
    iget-object v8, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    add-float v9, v0, v4

    mul-float v0, v0, v5

    sub-float v10, v3, v0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v12, p5

    invoke-direct/range {v6 .. v12}, Lorg/telegram/ui/Stories/ProfileStoriesView;->drawArc(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_8

    :cond_8
    if-nez v0, :cond_9

    if-eqz v2, :cond_d

    :cond_9
    if-nez v0, :cond_a

    move-object v0, v2

    :cond_a
    iget-object v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v0, v0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v5

    iget-object v6, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    iget-object v7, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v7, v5

    sub-float v8, v2, v6

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    add-float v9, v0, v7

    cmpl-float v8, v8, v9

    if-lez v8, :cond_b

    :goto_7
    iget-object v11, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    const/high16 v13, 0x43b40000    # 360.0f

    const/4 v14, 0x0

    const/4 v12, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v15, p5

    invoke-direct/range {v9 .. v15}, Lorg/telegram/ui/Stories/ProfileStoriesView;->drawArc(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_8

    :cond_b
    cmpl-float v8, v2, v6

    if-lez v8, :cond_c

    sub-float/2addr v2, v0

    add-float v0, v6, v7

    add-float/2addr v2, v0

    div-float/2addr v2, v5

    sub-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v7

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v11, v6

    iget-object v10, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    mul-float v5, v5, v11

    sub-float v12, v3, v5

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v14, p5

    invoke-direct/range {v8 .. v14}, Lorg/telegram/ui/Stories/ProfileStoriesView;->drawArc(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_8

    :cond_c
    add-float/2addr v2, v0

    sub-float v0, v6, v7

    add-float/2addr v2, v0

    div-float/2addr v2, v5

    sub-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v7

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v0, v6

    goto/16 :goto_6

    :cond_d
    :goto_8
    return-void
.end method

.method private getExpandRight()F
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandRight:F

    iget-object v1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandRightPadAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandRightPad:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v1

    const/high16 v2, 0x428e0000    # 71.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method private synthetic lambda$animateBounce$3(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarImage:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->bounceScale:F

    iput p1, v0, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->bounceScale:F

    iget-object p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarImage:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$animateNewStory$1([ZLandroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/4 v0, 0x0

    aget-boolean v1, p1, v0

    if-nez v1, :cond_0

    const v1, 0x3e4ccccd    # 0.2f

    cmpl-float v1, p2, v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    aput-boolean v1, p1, v0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/ProfileStoriesView;->vibrateNewStory()V

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->newStoryBounceT:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private static synthetic lambda$dispatchDraw$2(Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)I
    .locals 0

    iget p1, p1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedIndex:F

    iget p0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedIndex:F

    sub-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private synthetic lambda$new$4()V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/ProfileStoriesView;->onLongPress()V

    return-void
.end method

.method private synthetic lambda$vibrateNewStory$0()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->vibrateCursor(Landroid/view/View;)V

    return-void
.end method

.method private lerpCentered(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-static {v0, v1, p3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-static {v1, v2, p3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    invoke-static {v2, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    sub-float p2, v0, p1

    sub-float p3, v1, p1

    add-float/2addr v0, p1

    add-float/2addr v1, p1

    invoke-virtual {p4, p2, p3, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private nearest(Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;
    .locals 3

    if-eqz p3, :cond_5

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_3

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object p3, p3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, p3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p3

    invoke-static {v1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p3

    cmpl-float p3, v0, p3

    if-lez p3, :cond_2

    return-object p1

    :cond_2
    return-object p2

    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    return-object p1

    :cond_4
    return-object p2

    :cond_5
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private updateStories(ZZ)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->isTopic:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-wide v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    iget v4, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    cmp-long v8, v2, v4

    if-nez v8, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v3

    iget v4, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v4

    iget-wide v8, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    invoke-virtual {v4, v8, v9}, Lorg/telegram/ui/Stories/StoriesController;->getStoriesFromFullPeer(J)Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    move-result-object v4

    iget v5, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v5

    iget-wide v8, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    invoke-virtual {v5, v8, v9}, Lorg/telegram/ui/Stories/StoriesController;->getStories(J)Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    move-result-object v5

    iget-wide v8, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    const-wide/16 v10, 0x0

    cmp-long v13, v8, v10

    if-nez v13, :cond_2

    const/4 v8, 0x0

    goto :goto_1

    :cond_2
    move-object v8, v4

    :goto_1
    if-eqz v4, :cond_3

    iget v9, v4, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->max_read_id:I

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    if-eqz v5, :cond_4

    iget v13, v5, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->max_read_id:I

    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    move-result v9

    :cond_4
    if-eqz v8, :cond_5

    iget-object v13, v8, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    if-nez v13, :cond_6

    :cond_5
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    :cond_6
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iget v15, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->unreadCount:I

    iput v6, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->unreadCount:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_3
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v6

    if-ge v10, v6, :cond_9

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    instance-of v12, v6, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemDeleted;

    if-eqz v12, :cond_7

    goto :goto_4

    :cond_7
    iget v6, v6, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    if-le v6, v9, :cond_8

    iget v6, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->unreadCount:I

    add-int/2addr v6, v7

    iput v6, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->unreadCount:I

    :cond_8
    add-int/lit8 v11, v11, 0x1

    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_9
    const/4 v6, 0x0

    :goto_5
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v10

    if-ge v6, v10, :cond_14

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    instance-of v7, v10, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemDeleted;

    if-eqz v7, :cond_a

    goto/16 :goto_9

    :cond_a
    instance-of v7, v10, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemSkipped;

    if-eqz v7, :cond_f

    iget v7, v10, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    move-object/from16 v16, v10

    if-eqz v5, :cond_c

    const/4 v12, 0x0

    :goto_6
    iget-object v10, v5, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v12, v10, :cond_c

    iget-object v10, v5, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v10, v10, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    if-ne v10, v7, :cond_b

    iget-object v10, v5, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    goto :goto_7

    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_c
    move-object/from16 v10, v16

    :goto_7
    instance-of v12, v10, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemSkipped;

    if-eqz v12, :cond_e

    if-eqz v4, :cond_13

    const/4 v10, 0x0

    :goto_8
    iget-object v12, v4, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v10, v12, :cond_13

    iget-object v12, v4, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v12, v12, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    if-ne v12, v7, :cond_d

    iget-object v7, v4, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    goto :goto_9

    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_e
    if-eqz v12, :cond_10

    goto :goto_9

    :cond_f
    move-object/from16 v16, v10

    :cond_10
    iget v7, v10, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->expire_date:I

    if-eqz v7, :cond_11

    if-le v3, v7, :cond_11

    goto :goto_9

    :cond_11
    if-nez v2, :cond_12

    iget v7, v10, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    if-le v7, v9, :cond_13

    :cond_12
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v10, 0x3

    if-lt v7, v10, :cond_13

    goto :goto_a

    :cond_13
    :goto_9
    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x1

    goto/16 :goto_5

    :cond_14
    const/4 v10, 0x3

    :goto_a
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v6, v10, :cond_1e

    const/4 v6, 0x0

    :goto_b
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1e

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    instance-of v9, v7, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemSkipped;

    if-eqz v9, :cond_1a

    iget v9, v7, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    if-eqz v5, :cond_16

    const/4 v10, 0x0

    :goto_c
    iget-object v12, v5, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v10, v12, :cond_16

    iget-object v12, v5, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v12, v12, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    if-ne v12, v9, :cond_15

    iget-object v7, v5, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    goto :goto_d

    :cond_15
    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    :cond_16
    :goto_d
    instance-of v10, v7, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemSkipped;

    if-eqz v10, :cond_19

    if-eqz v4, :cond_17

    const/4 v7, 0x0

    :goto_e
    iget-object v10, v4, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v7, v10, :cond_17

    iget-object v10, v4, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v10, v10, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    if-ne v10, v9, :cond_18

    iget-object v9, v4, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    :cond_17
    :goto_f
    const/4 v9, 0x3

    goto :goto_10

    :cond_18
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_19
    if-eqz v10, :cond_1a

    goto :goto_f

    :cond_1a
    instance-of v9, v7, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemDeleted;

    if-eqz v9, :cond_1b

    goto :goto_f

    :cond_1b
    iget v9, v7, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->expire_date:I

    if-eqz v9, :cond_1c

    if-le v3, v9, :cond_1c

    goto :goto_f

    :cond_1c
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_17

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v9, 0x3

    if-lt v7, v9, :cond_1d

    goto :goto_11

    :cond_1d
    :goto_10
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_1e
    :goto_11
    const/4 v3, 0x0

    :goto_12
    iget-object v4, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-ge v3, v4, :cond_25

    iget-object v4, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    const/4 v7, 0x0

    :goto_13
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_20

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v10, v9, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iget v12, v4, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->storyId:I

    if-ne v10, v12, :cond_1f

    goto :goto_14

    :cond_1f
    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    :cond_20
    const/4 v7, -0x1

    const/4 v9, 0x0

    :goto_14
    if-ne v7, v6, :cond_21

    iput v5, v4, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->scale:F

    goto :goto_17

    :cond_21
    iput v7, v4, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->index:I

    if-nez v2, :cond_23

    if-eqz v8, :cond_22

    if-eqz v9, :cond_22

    iget v5, v9, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iget-object v6, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v9, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    invoke-virtual {v6, v9, v10}, Lorg/telegram/ui/Stories/StoriesController;->getMaxStoriesReadId(J)I

    move-result v6

    if-gt v5, v6, :cond_22

    goto :goto_15

    :cond_22
    const/4 v5, 0x0

    goto :goto_16

    :cond_23
    :goto_15
    const/4 v5, 0x1

    :goto_16
    iput-boolean v5, v4, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->read:Z

    :goto_17
    if-nez v1, :cond_24

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->apply()V

    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_25
    const/4 v3, 0x0

    :goto_18
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2c

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    const/4 v7, 0x0

    :goto_19
    iget-object v9, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_27

    iget-object v9, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    iget v9, v9, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->storyId:I

    iget v10, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    if-ne v9, v10, :cond_26

    goto :goto_1a

    :cond_26
    add-int/lit8 v7, v7, 0x1

    goto :goto_19

    :cond_27
    const/4 v7, -0x1

    :goto_1a
    if-ne v7, v6, :cond_2b

    iget-wide v9, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    iput-wide v9, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    new-instance v7, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    invoke-direct {v7, v0, v4}, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;-><init>(Lorg/telegram/ui/Stories/ProfileStoriesView;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    iput v3, v7, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->index:I

    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, v7, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->scale:F

    iget-object v9, v7, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->scaleAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v10, 0x1

    invoke-virtual {v9, v5, v10}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    if-nez v2, :cond_29

    if-eqz v8, :cond_28

    iget v4, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iget v9, v8, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->max_read_id:I

    if-gt v4, v9, :cond_28

    goto :goto_1b

    :cond_28
    const/4 v10, 0x0

    goto :goto_1c

    :cond_29
    :goto_1b
    const/4 v10, 0x1

    :goto_1c
    iput-boolean v10, v7, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->read:Z

    if-nez v1, :cond_2a

    invoke-virtual {v7}, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->apply()V

    :cond_2a
    iget-object v4, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_2c
    const/4 v3, 0x0

    iput-object v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->mainCircle:Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    const/4 v2, 0x0

    :goto_1d
    iget-object v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2e

    iget-object v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    iget v4, v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->scale:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2d

    iput-object v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->mainCircle:Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    goto :goto_1e

    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_2e
    :goto_1e
    iget-object v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Stories/StoriesController;->getUploadingStories(J)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_2f

    const/4 v2, 0x0

    goto :goto_1f

    :cond_2f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1f
    iput v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->uploadingStoriesCount:I

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    if-nez v10, :cond_30

    iget v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->uploadingStoriesCount:I

    if-eqz v2, :cond_30

    const/4 v10, 0x1

    :cond_30
    if-eqz p2, :cond_31

    if-eqz v1, :cond_31

    iget v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->count:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    if-ne v10, v2, :cond_32

    iget v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->unreadCount:I

    add-int/2addr v15, v3

    if-ne v2, v15, :cond_32

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Stories/ProfileStoriesView;->animateNewStory()V

    goto :goto_20

    :cond_31
    const/4 v3, 0x1

    :cond_32
    :goto_20
    iput v10, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->count:I

    iget-object v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->titleDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/4 v4, 0x0

    if-lez v10, :cond_33

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "Stories"

    invoke-static {v6, v10, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_21

    :cond_33
    const-string v5, ""

    :goto_21
    if-eqz v1, :cond_34

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v6, :cond_34

    const/4 v6, 0x1

    goto :goto_22

    :cond_34
    const/4 v6, 0x0

    :goto_22
    invoke-virtual {v2, v5, v6}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    iget-wide v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    iget v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    if-ltz v6, :cond_36

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_35

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    if-eqz v4, :cond_35

    goto :goto_23

    :cond_35
    iget-object v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->gradientTools:Lorg/telegram/ui/Stories/StoriesUtilities$StoryGradientTools;

    invoke-virtual {v3, v2, v1}, Lorg/telegram/ui/Stories/StoriesUtilities$StoryGradientTools;->setUser(Lorg/telegram/tgnet/TLRPC$User;Z)V

    goto :goto_24

    :cond_36
    neg-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    if-eqz v2, :cond_37

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$Chat;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusCollectible;

    if-eqz v4, :cond_37

    :goto_23
    iget-object v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->gradientTools:Lorg/telegram/ui/Stories/StoriesUtilities$StoryGradientTools;

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController$PeerColor;->fromCollectible(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)Lorg/telegram/messenger/MessagesController$PeerColor;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/Stories/StoriesUtilities$StoryGradientTools;->setColor(Lorg/telegram/messenger/MessagesController$PeerColor;Z)V

    goto :goto_24

    :cond_37
    iget-object v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView;->gradientTools:Lorg/telegram/ui/Stories/StoriesUtilities$StoryGradientTools;

    invoke-virtual {v3, v2, v1}, Lorg/telegram/ui/Stories/StoriesUtilities$StoryGradientTools;->setChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    :goto_24
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private vibrateNewStory()V
    .locals 3

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->vibrateCursor(Landroid/view/View;)V

    new-instance v0, Lorg/telegram/ui/Stories/ProfileStoriesView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/ProfileStoriesView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/ProfileStoriesView;)V

    const-wide/16 v1, 0xb4

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public animateNewStory()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->newStoryBounce:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Z

    aput-boolean v0, v1, v0

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->newStoryBounce:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/Stories/ProfileStoriesView$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v1}, Lorg/telegram/ui/Stories/ProfileStoriesView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/ProfileStoriesView;[Z)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->newStoryBounce:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/Stories/ProfileStoriesView$1;

    invoke-direct {v2, p0, v1}, Lorg/telegram/ui/Stories/ProfileStoriesView$1;-><init>(Lorg/telegram/ui/Stories/ProfileStoriesView;[Z)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->newStoryBounce:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->newStoryBounce:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->newStoryBounce:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x78

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->newStoryBounce:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/Stories/ProfileStoriesView;->updateStories(ZZ)V

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 31

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rightAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v1, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->right:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    iget-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v0, v9

    const v1, 0x3ecccccd    # 0.4f

    div-float/2addr v0, v1

    const/4 v10, 0x0

    invoke-static {v0, v9, v10}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    const/high16 v2, 0x40600000    # 3.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    invoke-static {v1, v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    iget v2, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressToInsets:F

    mul-float v1, v1, v2

    iget-object v2, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    iget-object v3, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v3

    mul-float v3, v3, v1

    add-float/2addr v2, v3

    iget-object v3, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    iget-object v4, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getScaleY()F

    move-result v4

    mul-float v4, v4, v1

    add-float/2addr v3, v4

    iget-object v4, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v11, 0x40000000    # 2.0f

    mul-float v1, v1, v11

    sub-float/2addr v4, v1

    iget-object v5, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getScaleX()F

    move-result v5

    mul-float v4, v4, v5

    iget-object v5, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v1

    iget-object v1, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v1

    mul-float v5, v5, v1

    iget-object v1, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect1:Landroid/graphics/RectF;

    add-float/2addr v4, v2

    add-float/2addr v5, v3

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget v12, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->left:F

    const/4 v13, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v14, 0x1

    if-ge v1, v2, :cond_2

    iget-object v2, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    iget-object v3, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->scaleAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v4, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->scale:F

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v3

    iput v3, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedScale:F

    cmpg-float v3, v3, v10

    if-gtz v3, :cond_0

    iget v3, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->scale:F

    cmpg-float v3, v3, v10

    if-gtz v3, :cond_0

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->destroy()V

    iget-object v2, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_0
    iget-object v3, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->indexAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v4, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->index:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v3

    iput v3, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedIndex:F

    iget-object v3, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->readAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v4, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->read:Z

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v3

    iput v3, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRead:F

    if-lez v1, :cond_1

    iget-object v3, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    iget v3, v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedIndex:F

    iget v2, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedIndex:F

    cmpl-float v2, v3, v2

    if-lez v2, :cond_1

    iget-object v1, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/Stories/ProfileStoriesView$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lorg/telegram/ui/Stories/ProfileStoriesView$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_2

    :cond_1
    :goto_1
    add-int/2addr v1, v14

    goto :goto_0

    :cond_2
    :goto_2
    iget v1, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    const v2, 0x3e4ccccd    # 0.2f

    div-float/2addr v1, v2

    sub-float v1, v9, v1

    invoke-static {v1, v9, v10}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    iget-object v3, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v4, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Stories/StoriesController;->isLastUploadingFailed(J)Z

    move-result v3

    iget-object v4, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v5, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/Stories/StoriesController;->hasUploadingStories(J)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v5, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->lastUploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-eqz v5, :cond_3

    iget-boolean v5, v5, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->canceled:Z

    if-eqz v5, :cond_3

    iput-boolean v13, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressWasDrawn:Z

    iput-boolean v13, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressIsDone:Z

    iget-object v5, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressToUploading:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v5, v13, v14}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    :cond_3
    if-eqz v4, :cond_4

    if-eqz v3, :cond_5

    :cond_4
    iget-boolean v4, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressWasDrawn:Z

    if-eqz v4, :cond_6

    iget-boolean v4, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressIsDone:Z

    if-nez v4, :cond_6

    :cond_5
    const/4 v4, 0x1

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    :goto_3
    iget-object v5, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressToUploading:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v4

    iget v5, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->fragmentTransitionProgress:F

    invoke-static {v10, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v5, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->bounceScale:F

    iget-object v6, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect1:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    iget-object v15, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect1:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->centerY()F

    move-result v15

    invoke-virtual {v8, v5, v5, v6, v15}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v5, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect1:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    iget v6, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandY:F

    iget v15, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    invoke-static {v5, v6, v15}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v15

    const/4 v6, 0x0

    iput-object v6, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->lastUploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    const v16, 0x40151eb8    # 2.33f

    const/high16 v17, 0x437f0000    # 255.0f

    const v5, 0x4071999a    # 3.775f

    cmpl-float v18, v4, v10

    if-lez v18, :cond_10

    iget-object v11, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    iget-object v2, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect1:Landroid/graphics/RectF;

    invoke-virtual {v11, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v2, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v11

    neg-float v11, v11

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v9

    neg-float v9, v9

    invoke-virtual {v2, v11, v9}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v2, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->gradientTools:Lorg/telegram/ui/Stories/StoriesUtilities$StoryGradientTools;

    iget-object v9, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v2, v9}, Lorg/telegram/ui/Stories/StoriesUtilities$StoryGradientTools;->getPaint(Landroid/graphics/RectF;)Landroid/graphics/Paint;

    move-result-object v2

    iget-object v9, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    if-nez v9, :cond_7

    new-instance v9, Lorg/telegram/ui/Components/RadialProgress;

    invoke-direct {v9, v7}, Lorg/telegram/ui/Components/RadialProgress;-><init>(Landroid/view/View;)V

    iput-object v9, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-virtual {v9, v6, v14, v13}, Lorg/telegram/ui/Components/RadialProgress;->setBackground(Landroid/graphics/drawable/Drawable;ZZ)V

    iget-object v9, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    sget v11, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iget-wide v5, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    invoke-static {v11, v5, v6}, Lorg/telegram/messenger/ChatObject;->isForum(IJ)Z

    move-result v5

    invoke-virtual {v9, v5}, Lorg/telegram/ui/Components/RadialProgress;->setRoundRectProgress(Z)V

    :cond_7
    iget-object v5, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    move v11, v15

    iget-wide v14, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    invoke-virtual {v5, v14, v15}, Lorg/telegram/ui/Stories/StoriesController;->hasUploadingStories(J)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v14, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    invoke-virtual {v5, v14, v15}, Lorg/telegram/ui/Stories/StoriesController;->isLastUploadingFailed(J)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_5

    :cond_8
    iget-object v5, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v14, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    invoke-virtual {v5, v14, v15}, Lorg/telegram/ui/Stories/StoriesController;->getUploadingStories(J)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_9

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    iput-object v6, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->lastUploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    :cond_9
    const/4 v6, 0x0

    const/4 v14, 0x0

    :goto_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v6, v15, :cond_a

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    iget v15, v15, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->progress:F

    add-float/2addr v14, v15

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_a
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v14, v5

    goto :goto_6

    :cond_b
    const/4 v5, 0x0

    goto :goto_6

    :cond_c
    :goto_5
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_6
    iget-object v6, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-virtual {v6, v13}, Lorg/telegram/ui/Components/RadialProgress;->setDiff(I)V

    mul-float v6, v1, v17

    mul-float v6, v6, v4

    float-to-int v6, v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v6, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-virtual {v6, v2}, Lorg/telegram/ui/Components/RadialProgress;->setPaint(Landroid/graphics/Paint;)V

    iget-object v6, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    iget-object v14, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    iget v15, v14, Landroid/graphics/RectF;->left:F

    float-to-int v15, v15

    iget v9, v14, Landroid/graphics/RectF;->top:F

    float-to-int v9, v9

    iget v13, v14, Landroid/graphics/RectF;->right:F

    float-to-int v13, v13

    iget v14, v14, Landroid/graphics/RectF;->bottom:F

    float-to-int v14, v14

    invoke-virtual {v6, v15, v9, v13, v14}, Lorg/telegram/ui/Components/RadialProgress;->setProgressRect(IIII)V

    iget-object v6, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v5, v9, v10}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v5

    const/4 v9, 0x1

    invoke-virtual {v6, v5, v9}, Lorg/telegram/ui/Components/RadialProgress;->setProgress(FZ)V

    iget-object v5, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->avatarImage:Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    iget-boolean v5, v5, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->drawAvatar:Z

    if-eqz v5, :cond_d

    iget-object v5, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-virtual {v5, v8}, Lorg/telegram/ui/Components/RadialProgress;->draw(Landroid/graphics/Canvas;)V

    :cond_d
    iput-boolean v9, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressWasDrawn:Z

    iget-boolean v5, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressIsDone:Z

    iget-object v6, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/RadialProgress;->getAnimatedProgress()F

    move-result v6

    const v13, 0x3f7ae148    # 0.98f

    cmpl-float v6, v6, v13

    if-ltz v6, :cond_e

    const/4 v6, 0x1

    goto :goto_7

    :cond_e
    const/4 v6, 0x0

    :goto_7
    iput-boolean v6, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressIsDone:Z

    if-eq v5, v6, :cond_f

    iget-object v5, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->segmentsCountAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v6, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->count:I

    int-to-float v6, v6

    const/4 v9, 0x1

    invoke-virtual {v5, v6, v9}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    iget-object v5, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->segmentsUnreadCountAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v6, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->unreadCount:I

    int-to-float v6, v6

    invoke-virtual {v5, v6, v9}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/ProfileStoriesView;->animateBounce()V

    :cond_f
    const/4 v13, 0x0

    goto :goto_8

    :cond_10
    move v11, v15

    iput-boolean v13, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressWasDrawn:Z

    const/4 v2, 0x0

    :goto_8
    const v14, 0x5affffff

    const/high16 v15, 0x3fc00000    # 1.5f

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v6, v4, v5

    if-gez v6, :cond_1d

    iget v1, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    const v6, 0x3e4ccccd    # 0.2f

    div-float/2addr v1, v6

    sub-float v1, v5, v1

    invoke-static {v1, v5, v10}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    sub-float v4, v5, v4

    mul-float v19, v1, v4

    iget-object v1, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->segmentsCountAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v4, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->count:I

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v1

    iget-object v4, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->segmentsUnreadCountAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v5, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->unreadCount:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v23

    if-eqz v3, :cond_12

    iget-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    iget-object v1, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect1:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    const v1, 0x4071999a    # 3.775f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    neg-float v3, v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesUtilities;->getErrorPaint(Landroid/graphics/RectF;)Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    mul-float v1, v19, v17

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iget-wide v3, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    invoke-static {v1, v3, v4}, Lorg/telegram/messenger/ChatObject;->isForum(IJ)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    const v3, 0x3ea3d70a    # 0.32f

    mul-float v1, v1, v3

    iget-object v3, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v8, v3, v1, v1, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_f

    :cond_11
    iget-object v1, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v3, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget-object v4, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v8, v1, v3, v4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_f

    :cond_12
    iget-object v3, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->mainCircle:Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    if-nez v3, :cond_13

    iget v3, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->uploadingStoriesCount:I

    if-lez v3, :cond_1c

    :cond_13
    cmpl-float v3, v19, v10

    if-lez v3, :cond_1c

    iget-object v3, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    iget-object v4, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect1:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v3, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    const v4, 0x4071999a    # 3.775f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    neg-float v5, v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v3, v5, v4}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v3, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect3:Landroid/graphics/RectF;

    iget-object v4, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect1:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v3, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect3:Landroid/graphics/RectF;

    const v4, 0x405a3d71    # 3.41f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    neg-float v5, v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v3, v5, v4}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v3, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    iget-object v4, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect3:Landroid/graphics/RectF;

    invoke-static {v3, v4, v0, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    const v3, 0x40875c29    # 4.23f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    float-to-double v3, v3

    iget-object v5, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect1:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-double v5, v5

    const-wide v24, 0x400921fb54442d18L    # Math.PI

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v24

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    const-wide v5, 0x4076800000000000L    # 360.0

    mul-double v3, v3, v5

    double-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v5, v1, v4

    invoke-static {v5, v4, v10}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v5

    mul-float v5, v5, v19

    invoke-static {v10, v3, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    iget v4, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->count:I

    const/16 v5, 0x32

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/high16 v4, 0x42480000    # 50.0f

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const/16 v1, 0x14

    if-le v6, v1, :cond_14

    const/4 v1, 0x3

    :goto_9
    const/4 v4, 0x1

    goto :goto_a

    :cond_14
    const/4 v1, 0x5

    goto :goto_9

    :goto_a
    if-gt v6, v4, :cond_15

    const/4 v1, 0x0

    :cond_15
    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v1, v3, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v22

    invoke-static {v10, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float v0, v0, v22

    const/high16 v1, 0x43b40000    # 360.0f

    sub-float/2addr v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    div-float v4, v1, v3

    iget-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaint:Landroid/graphics/Paint;

    iget v1, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->actionBarProgress:F

    const/high16 v3, 0x3a000000

    invoke-static {v14, v3, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iput v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaintAlpha:I

    const/high16 v0, 0x40000000    # 2.0f

    div-float v1, v22, v0

    const/high16 v0, -0x3d4c0000    # -90.0f

    sub-float/2addr v0, v1

    move/from16 v24, v0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v6, :cond_1c

    int-to-float v0, v3

    sub-float v1, v23, v0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v1, v9, v10}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    sub-float v26, v9, v1

    int-to-float v1, v6

    sub-float/2addr v1, v5

    sub-float/2addr v1, v0

    invoke-static {v1, v9, v10}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    sub-float v27, v9, v0

    cmpg-float v0, v27, v10

    if-gez v0, :cond_16

    move/from16 v30, v3

    move v14, v4

    move v9, v5

    move/from16 v28, v6

    const/16 v21, 0x0

    goto/16 :goto_e

    :cond_16
    if-nez v3, :cond_17

    iget v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->newStoryBounceT:F

    sub-float/2addr v0, v9

    const/high16 v1, 0x40200000    # 2.5f

    div-float/2addr v0, v1

    add-float v20, v0, v9

    move/from16 v1, v20

    goto :goto_c

    :cond_17
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_c
    cmpl-float v0, v1, v9

    if-eqz v0, :cond_18

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v13, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->centerY()F

    move-result v13

    invoke-virtual {v8, v1, v1, v0, v13}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_18
    cmpg-float v0, v26, v9

    if-gez v0, :cond_19

    iget-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->gradientTools:Lorg/telegram/ui/Stories/StoriesUtilities$StoryGradientTools;

    iget-object v2, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/StoriesUtilities$StoryGradientTools;->getPaint(Landroid/graphics/RectF;)Landroid/graphics/Paint;

    move-result-object v13

    sub-float v0, v9, v26

    mul-float v0, v0, v17

    mul-float v0, v0, v19

    float-to-int v0, v0

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    neg-float v0, v4

    mul-float v9, v0, v27

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v29, v1

    move-object/from16 v1, p1

    move/from16 v30, v3

    move/from16 v3, v24

    move v14, v4

    move v4, v9

    move v9, v5

    move/from16 v5, v28

    move/from16 v28, v6

    const/16 v21, 0x0

    move-object v6, v13

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stories/ProfileStoriesView;->drawArc(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_d

    :cond_19
    move/from16 v29, v1

    move/from16 v30, v3

    move v14, v4

    move v9, v5

    move/from16 v28, v6

    const/16 v21, 0x0

    move-object v13, v2

    :goto_d
    cmpl-float v0, v26, v10

    if-lez v0, :cond_1a

    iget-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaint:Landroid/graphics/Paint;

    iget v1, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaintAlpha:I

    int-to-float v1, v1

    mul-float v1, v1, v26

    mul-float v1, v1, v19

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaint:Landroid/graphics/Paint;

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect3:Landroid/graphics/RectF;

    neg-float v0, v14

    mul-float v4, v0, v27

    iget-object v6, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, v24

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stories/ProfileStoriesView;->drawArc(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_1a
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, v29, v0

    if-eqz v1, :cond_1b

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1b
    mul-float v4, v14, v27

    mul-float v27, v27, v22

    add-float v4, v4, v27

    sub-float v24, v24, v4

    move-object v2, v13

    :goto_e
    add-int/lit8 v3, v30, 0x1

    move v5, v9

    move v4, v14

    move/from16 v6, v28

    const/4 v13, 0x0

    const v14, 0x5affffff

    goto/16 :goto_b

    :cond_1c
    :goto_f
    const/16 v21, 0x0

    goto :goto_10

    :cond_1d
    const/16 v21, 0x0

    move/from16 v19, v1

    :goto_10
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/ProfileStoriesView;->getExpandRight()F

    move-result v0

    iget v1, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    cmpl-float v1, v1, v10

    if-lez v1, :cond_31

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v3, v19, v1

    if-gez v3, :cond_31

    iput v10, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->w:F

    const/4 v1, 0x0

    :goto_11
    iget-object v2, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1e

    iget-object v2, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    iget v2, v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedScale:F

    iget v3, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->w:F

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v2

    add-float/2addr v3, v4

    iput v3, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->w:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_1e
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_12
    iget-object v3, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const v4, 0x402a3d71    # 2.66f

    if-ge v1, v3, :cond_1f

    iget-object v3, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    iget v5, v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedScale:F

    iget v6, v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRead:F

    const/high16 v9, 0x41e00000    # 28.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v9, v13

    mul-float v9, v9, v5

    iget v13, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->w:F

    sub-float v13, v0, v13

    add-float/2addr v13, v9

    add-float/2addr v13, v2

    const/high16 v14, 0x41900000    # 18.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    mul-float v14, v14, v5

    add-float/2addr v2, v14

    add-float v14, v13, v9

    invoke-static {v12, v14}, Ljava/lang/Math;->max(FF)F

    move-result v12

    iget-object v10, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    sub-float/2addr v13, v9

    sub-float v15, v11, v9

    add-float/2addr v9, v11

    invoke-virtual {v10, v13, v15, v14, v9}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v9, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect1:Landroid/graphics/RectF;

    iget-object v10, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    iget v13, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    iget-object v14, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect3:Landroid/graphics/RectF;

    invoke-direct {v7, v9, v10, v13, v14}, Lorg/telegram/ui/Stories/ProfileStoriesView;->lerpCentered(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    iget-object v9, v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    iget-object v10, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect3:Landroid/graphics/RectF;

    invoke-virtual {v9, v10}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v9, v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    iget-object v10, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect3:Landroid/graphics/RectF;

    invoke-virtual {v9, v10}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    const v9, 0x3faa3d71    # 1.33f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v9

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v10

    iget v13, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    invoke-static {v9, v10, v13}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v9

    iget v10, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    mul-float v6, v6, v10

    invoke-static {v4, v9, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    iget-object v3, v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    neg-float v4, v4

    mul-float v4, v4, v5

    invoke-virtual {v3, v4, v4}, Landroid/graphics/RectF;->inset(FF)V

    add-int/lit8 v1, v1, 0x1

    const/4 v10, 0x0

    const/high16 v15, 0x3fc00000    # 1.5f

    goto/16 :goto_12

    :cond_1f
    iget-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaint:Landroid/graphics/Paint;

    iget v1, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    const v2, -0x7f443b34

    const v3, 0x5affffff

    invoke-static {v3, v2, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iput v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaintAlpha:I

    iget-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->gradientTools:Lorg/telegram/ui/Stories/StoriesUtilities$StoryGradientTools;

    iget-object v1, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/StoriesUtilities$StoryGradientTools;->getPaint(Landroid/graphics/RectF;)Landroid/graphics/Paint;

    move-result-object v9

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    iget v3, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f900000    # 1.125f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    iget v3, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    invoke-static {v2, v1, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_20

    const/4 v0, 0x0

    :goto_13
    iget-object v1, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    iget-object v1, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    iget-object v2, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->whitePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    iget-object v3, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->whitePaint:Landroid/graphics/Paint;

    int-to-float v5, v2

    iget v6, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v3, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v5, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    iget-object v6, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    iget-object v10, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v10

    invoke-static {v6, v10}, Ljava/lang/Math;->min(FF)F

    move-result v6

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v6, v10

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v11

    invoke-virtual {v9}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v12

    div-float/2addr v12, v10

    add-float/2addr v11, v12

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v12

    iget-object v13, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaint:Landroid/graphics/Paint;

    invoke-virtual {v13}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v13

    div-float/2addr v13, v10

    sub-float/2addr v12, v13

    iget v1, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRead:F

    invoke-static {v11, v12, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    iget v10, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    mul-float v1, v1, v10

    add-float/2addr v6, v1

    iget-object v1, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->whitePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v3, v5, v6, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->whitePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_20
    const/4 v13, 0x0

    :goto_14
    iget-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v13, v0, :cond_2c

    iget-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    add-int/lit8 v0, v13, -0x2

    if-ltz v0, :cond_21

    iget-object v1, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    goto :goto_15

    :cond_21
    move-object/from16 v0, v21

    :goto_15
    add-int/lit8 v1, v13, -0x1

    if-ltz v1, :cond_22

    iget-object v2, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    goto :goto_16

    :cond_22
    move-object/from16 v1, v21

    :goto_16
    invoke-direct {v7, v0, v1, v6}, Lorg/telegram/ui/Stories/ProfileStoriesView;->nearest(Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    move-result-object v0

    add-int/lit8 v10, v13, 0x1

    iget-object v1, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_23

    iget-object v1, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    goto :goto_17

    :cond_23
    move-object/from16 v1, v21

    :goto_17
    add-int/lit8 v13, v13, 0x2

    iget-object v2, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v13, v2, :cond_24

    iget-object v2, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    goto :goto_18

    :cond_24
    move-object/from16 v2, v21

    :goto_18
    invoke-direct {v7, v1, v2, v6}, Lorg/telegram/ui/Stories/ProfileStoriesView;->nearest(Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    move-result-object v1

    if-eqz v0, :cond_26

    iget-object v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, v6, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, v6, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-object v5, v0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v5, v4

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_25

    iget-object v2, v0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, v6, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-object v5, v6, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v5, v4

    add-float/2addr v3, v5

    cmpl-float v2, v2, v3

    if-lez v2, :cond_26

    :cond_25
    move-object/from16 v11, v21

    goto :goto_19

    :cond_26
    move-object v11, v0

    :goto_19
    if-eqz v1, :cond_28

    iget-object v0, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v2, v6, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v2, v6, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v4, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_27

    iget-object v0, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v2, v6, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v2, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v2, v12

    iget-object v3, v6, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->borderRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, v12

    add-float/2addr v2, v3

    cmpl-float v0, v0, v2

    if-lez v0, :cond_29

    goto :goto_1a

    :cond_27
    const/high16 v12, 0x40000000    # 2.0f

    :goto_1a
    move-object/from16 v13, v21

    goto :goto_1b

    :cond_28
    const/high16 v12, 0x40000000    # 2.0f

    :cond_29
    move-object v13, v1

    :goto_1b
    iget v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRead:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_2a

    iget v2, v6, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedScale:F

    mul-float v2, v2, v17

    sub-float v0, v1, v0

    mul-float v2, v2, v0

    sub-float v0, v1, v19

    mul-float v2, v2, v0

    float-to-int v0, v2

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v11

    move-object v3, v6

    move-object v4, v13

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/ProfileStoriesView;->drawArcs(Landroid/graphics/Canvas;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Landroid/graphics/Paint;)V

    :cond_2a
    iget v0, v6, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRead:F

    const/4 v14, 0x0

    cmpl-float v1, v0, v14

    if-lez v1, :cond_2b

    iget-object v1, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaint:Landroid/graphics/Paint;

    iget v2, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaintAlpha:I

    int-to-float v2, v2

    iget v3, v6, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedScale:F

    mul-float v2, v2, v3

    mul-float v2, v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v3, v0, v19

    mul-float v2, v2, v3

    float-to-int v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v5, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->readPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v11

    move-object v3, v6

    move-object v4, v13

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/ProfileStoriesView;->drawArcs(Landroid/graphics/Canvas;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Landroid/graphics/Paint;)V

    :cond_2b
    move v13, v10

    goto/16 :goto_14

    :cond_2c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    mul-float v0, v0, v17

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v1, v1, v19

    mul-float v0, v0, v1

    float-to-int v5, v0

    const/4 v2, 0x0

    const/16 v6, 0x1f

    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    iget-object v0, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_1c
    if-ltz v0, :cond_30

    iget-object v1, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    iget-object v2, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getVisible()Z

    move-result v2

    if-nez v2, :cond_2d

    goto :goto_1f

    :cond_2d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v2

    add-int/lit8 v3, v0, -0x1

    if-ltz v3, :cond_2e

    iget-object v4, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    goto :goto_1d

    :cond_2e
    move-object/from16 v6, v21

    :goto_1d
    add-int/lit8 v3, v0, -0x2

    if-ltz v3, :cond_2f

    iget-object v4, v7, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    goto :goto_1e

    :cond_2f
    move-object/from16 v3, v21

    :goto_1e
    invoke-direct {v7, v6, v3, v1}, Lorg/telegram/ui/Stories/ProfileStoriesView;->nearest(Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    move-result-object v3

    invoke-direct {v7, v8, v1, v3}, Lorg/telegram/ui/Stories/ProfileStoriesView;->clipCircle(Landroid/graphics/Canvas;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;)V

    iget-object v3, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v4, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->cachedRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/RectF;)V

    iget-object v1, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v8}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    invoke-virtual {v8, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_1c

    :cond_30
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    move-object v2, v9

    :cond_31
    if-eqz v2, :cond_32

    const v0, 0x40133333    # 2.3f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_32
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getFragmentTransitionProgress()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->fragmentTransitionProgress:F

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->attached:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    iget-object v1, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->attached:Z

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;

    iget-object v1, v1, Lorg/telegram/ui/Stories/ProfileStoriesView$StoryCircle;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected abstract onLongPress()V
.end method

.method protected abstract onTap(Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    iget v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    const v1, 0x3f666666    # 0.9f

    const/4 v2, 0x1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rect2:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/ProfileStoriesView;->getExpandRight()F

    move-result v1

    iget v3, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->w:F

    sub-float/2addr v1, v3

    const/high16 v3, 0x42000000    # 32.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v1, v4

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/ProfileStoriesView;->getExpandRight()F

    move-result v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v1, v4

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->tapTime:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->tapX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->tapY:F

    iget-object p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->onLongPressRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->onLongPressRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return v2

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->onLongPressRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    if-eqz v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->tapTime:J

    sub-long/2addr v0, v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v3

    int-to-long v3, v3

    cmp-long v5, v0, v3

    if-gtz v5, :cond_5

    iget v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->tapX:F

    iget v1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->tapY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v0, v1, v3, v4}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v3, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Stories/StoriesController;->hasUploadingStories(J)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v3, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->dialogId:J

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Stories/StoriesController;->hasStories(J)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->circles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->provider:Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/ProfileStoriesView;->onTap(Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V

    return v2

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->tapTime:J

    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->onLongPressRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_5
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setActionBarActionMode(F)V
    .locals 1

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->actionBarProgress:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBounds(FFFZ)V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->left:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x1

    const v2, 0x3dcccccd    # 0.1f

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->right:F

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->cy:F

    sub-float v0, p3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->left:F

    iput p2, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->right:F

    if-nez p4, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->rightAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    :cond_2
    iput p3, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->cy:F

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method

.method public setExpandCoords(FZF)V
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandRight:F

    iput-boolean p2, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandRightPad:Z

    iput p3, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandY:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setExpandProgress(F)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->expandProgress:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setFragmentTransitionProgress(F)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->fragmentTransitionProgress:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->fragmentTransitionProgress:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setProgressToStoriesInsets(F)V
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressToInsets:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->progressToInsets:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setStories(Lorg/telegram/tgnet/tl/TL_stories$PeerStories;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->peerStories:Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Stories/ProfileStoriesView;->updateStories(ZZ)V

    return-void
.end method

.method public update()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/Stories/ProfileStoriesView;->updateStories(ZZ)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/ProfileStoriesView;->titleDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

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
