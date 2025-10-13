.class public Lorg/telegram/ui/Components/PhotoFilterView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;
.implements Lorg/telegram/ui/Stories/recorder/StoryRecorder$Touchable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;,
        Lorg/telegram/ui/Components/PhotoFilterView$RecyclerListViewWithShadows;,
        Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;,
        Lorg/telegram/ui/Components/PhotoFilterView$EnhanceView;,
        Lorg/telegram/ui/Components/PhotoFilterView$CurvesValue;
    }
.end annotation


# instance fields
.field private bitmapMask:Landroid/graphics/Bitmap;

.field private bitmapToEdit:Landroid/graphics/Bitmap;

.field private blurAngle:F

.field private blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

.field private blurExcludeBlurSize:F

.field private blurExcludePoint:Lorg/telegram/ui/Components/Point;

.field private blurExcludeSize:F

.field private blurItem:Landroid/widget/ImageView;

.field private blurLayout:Landroid/widget/FrameLayout;

.field private blurLinearButton:Landroid/widget/TextView;

.field private blurOffButton:Landroid/widget/TextView;

.field private blurRadialButton:Landroid/widget/TextView;

.field private blurType:I

.field private cancelTextView:Landroid/widget/TextView;

.field private contrastTool:I

.field private contrastValue:F

.field private curveItem:Landroid/widget/ImageView;

.field private curveLayout:Landroid/widget/FrameLayout;

.field private curveRadioButton:[Lorg/telegram/ui/Components/RadioButton;

.field private curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

.field private curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

.field private doneTextView:Landroid/widget/TextView;

.field private eglThread:Lorg/telegram/ui/Components/FilterGLThread;

.field private enhanceTool:I

.field private enhanceValue:F

.field private exposureTool:I

.field private exposureValue:F

.field private fadeTool:I

.field private fadeValue:F

.field private filtersEmpty:Z

.field private gradientBottom:I

.field private gradientTop:I

.field private grainTool:I

.field private grainValue:F

.field private highlightsTool:I

.field private highlightsValue:F

.field private inBubbleMode:Z

.field private isMirrored:Z

.field private lastState:Lorg/telegram/messenger/MediaController$SavedFilterState;

.field private final maskMatrix:Landroid/graphics/Matrix;

.field private final maskPaint:Landroid/graphics/Paint;

.field private final maskRect:Landroid/graphics/Rect;

.field private orientation:I

.field private ownLayout:Z

.field private ownsTextureView:Z

.field private paintingOverlay:Lorg/telegram/ui/Components/PaintingOverlay;

.field private recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private rowsCount:I

.field private saturationTool:I

.field private saturationValue:F

.field private selectedTool:I

.field private shadowsTool:I

.field private shadowsValue:F

.field private sharpenTool:I

.field private sharpenValue:F

.field private showOriginal:Z

.field private softenSkinTool:I

.field private softenSkinValue:F

.field private textureView:Landroid/view/TextureView;

.field private tintHighlightsColor:I

.field private tintHighlightsTool:I

.field private tintShadowsColor:I

.field private tintShadowsTool:I

.field private toolsView:Landroid/widget/FrameLayout;

.field private tuneItem:Landroid/widget/ImageView;

.field private vignetteTool:I

.field private vignetteValue:F

.field private warmthTool:I

.field private warmthValue:F


# direct methods
.method public static synthetic $r8$lambda$-a8z3Ho4SsDpMN9wcYdj2Gl20FA(Lorg/telegram/ui/Components/PhotoFilterView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoFilterView;->lambda$new$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0RSoKATv3KtbVVexmwUFWvjIcm8(Lorg/telegram/ui/Components/PhotoFilterView;Lorg/telegram/ui/Components/Point;FFF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/PhotoFilterView;->lambda$new$1(Lorg/telegram/ui/Components/Point;FFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$9iBtNlZyeC2W-uiq4YwZUvuzaCc(Lorg/telegram/ui/Components/PhotoFilterView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoFilterView;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JTNnrhnuDFmCIPBYa5l5rulZpFo(Lorg/telegram/ui/Components/PhotoFilterView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoFilterView;->lambda$new$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Uf2vCJiG0iZJaMauKN8RIWpHIEo(Lorg/telegram/ui/Components/PhotoFilterView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoFilterView;->lambda$new$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bXVyXwRK76CUNqiH6SGJPmd1zJk(Lorg/telegram/ui/Components/PhotoFilterView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoFilterView;->lambda$new$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tTFnuEKU7pKR0oodlYvgVxhFFn4(Lorg/telegram/ui/Components/PhotoFilterView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$vir9DcHr96THwVT4GE5NRUdWF3M(Lorg/telegram/ui/Components/PhotoFilterView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoFilterView;->lambda$new$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vj_5MLN6XauOWEWwg2i0k-skqa4(Lorg/telegram/ui/Components/PhotoFilterView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoFilterView;->lambda$new$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zzD-iDi9uEEGmxMrSGMEWVNxwpE(Lorg/telegram/ui/Components/PhotoFilterView;Lorg/telegram/ui/Components/FilterGLThread;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoFilterView;->lambda$new$0(Lorg/telegram/ui/Components/FilterGLThread;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/VideoEditTextureView;Landroid/graphics/Bitmap;ILorg/telegram/messenger/MediaController$SavedFilterState;Lorg/telegram/ui/Components/PaintingOverlay;IZZLorg/telegram/ui/Components/BlurringShader$BlurManager;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 13

    .line 0
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lorg/telegram/ui/Components/PhotoFilterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/VideoEditTextureView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILorg/telegram/messenger/MediaController$SavedFilterState;Lorg/telegram/ui/Components/PaintingOverlay;IZZLorg/telegram/ui/Components/BlurringShader$BlurManager;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/VideoEditTextureView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILorg/telegram/messenger/MediaController$SavedFilterState;Lorg/telegram/ui/Components/PaintingOverlay;IZZLorg/telegram/ui/Components/BlurringShader$BlurManager;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 23

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p6

    move/from16 v4, p8

    move/from16 v5, p10

    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x4

    new-array v7, v6, [Lorg/telegram/ui/Components/RadioButton;

    iput-object v7, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveRadioButton:[Lorg/telegram/ui/Components/RadioButton;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v0, Lorg/telegram/ui/Components/PhotoFilterView;->maskRect:Landroid/graphics/Rect;

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    iput-object v7, v0, Lorg/telegram/ui/Components/PhotoFilterView;->maskMatrix:Landroid/graphics/Matrix;

    new-instance v7, Landroid/graphics/Paint;

    const/4 v8, 0x2

    invoke-direct {v7, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, v0, Lorg/telegram/ui/Components/PhotoFilterView;->maskPaint:Landroid/graphics/Paint;

    iput-boolean v5, v0, Lorg/telegram/ui/Components/PhotoFilterView;->ownLayout:Z

    move-object/from16 v7, p12

    iput-object v7, v0, Lorg/telegram/ui/Components/PhotoFilterView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    instance-of v7, v1, Lorg/telegram/ui/BubbleActivity;

    iput-boolean v7, v0, Lorg/telegram/ui/Components/PhotoFilterView;->inBubbleMode:Z

    move-object/from16 v7, p7

    iput-object v7, v0, Lorg/telegram/ui/Components/PhotoFilterView;->paintingOverlay:Lorg/telegram/ui/Components/PaintingOverlay;

    move/from16 v7, p9

    iput-boolean v7, v0, Lorg/telegram/ui/Components/PhotoFilterView;->isMirrored:Z

    const/4 v7, 0x0

    iput v7, v0, Lorg/telegram/ui/Components/PhotoFilterView;->rowsCount:I

    const/4 v9, -0x1

    const/4 v10, 0x1

    if-ne v4, v10, :cond_0

    iput v10, v0, Lorg/telegram/ui/Components/PhotoFilterView;->rowsCount:I

    iput v7, v0, Lorg/telegram/ui/Components/PhotoFilterView;->softenSkinTool:I

    goto :goto_0

    :cond_0
    if-nez v4, :cond_1

    iput v9, v0, Lorg/telegram/ui/Components/PhotoFilterView;->softenSkinTool:I

    :cond_1
    :goto_0
    iget v11, v0, Lorg/telegram/ui/Components/PhotoFilterView;->rowsCount:I

    add-int/lit8 v12, v11, 0x1

    iput v11, v0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceTool:I

    add-int/lit8 v13, v11, 0x2

    iput v12, v0, Lorg/telegram/ui/Components/PhotoFilterView;->exposureTool:I

    add-int/lit8 v12, v11, 0x3

    iput v13, v0, Lorg/telegram/ui/Components/PhotoFilterView;->contrastTool:I

    add-int/lit8 v13, v11, 0x4

    iput v12, v0, Lorg/telegram/ui/Components/PhotoFilterView;->saturationTool:I

    add-int/lit8 v12, v11, 0x5

    iput v13, v0, Lorg/telegram/ui/Components/PhotoFilterView;->warmthTool:I

    add-int/lit8 v13, v11, 0x6

    iput v12, v0, Lorg/telegram/ui/Components/PhotoFilterView;->fadeTool:I

    add-int/lit8 v12, v11, 0x7

    iput v13, v0, Lorg/telegram/ui/Components/PhotoFilterView;->highlightsTool:I

    add-int/lit8 v13, v11, 0x8

    iput v12, v0, Lorg/telegram/ui/Components/PhotoFilterView;->shadowsTool:I

    add-int/lit8 v12, v11, 0x9

    iput v12, v0, Lorg/telegram/ui/Components/PhotoFilterView;->rowsCount:I

    iput v13, v0, Lorg/telegram/ui/Components/PhotoFilterView;->vignetteTool:I

    if-ne v4, v8, :cond_2

    add-int/lit8 v11, v11, 0xa

    iput v11, v0, Lorg/telegram/ui/Components/PhotoFilterView;->rowsCount:I

    iput v12, v0, Lorg/telegram/ui/Components/PhotoFilterView;->softenSkinTool:I

    :cond_2
    if-nez v2, :cond_3

    iget v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->rowsCount:I

    add-int/lit8 v11, v4, 0x1

    iput v11, v0, Lorg/telegram/ui/Components/PhotoFilterView;->rowsCount:I

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->grainTool:I

    goto :goto_1

    :cond_3
    iput v9, v0, Lorg/telegram/ui/Components/PhotoFilterView;->grainTool:I

    :goto_1
    iget v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->rowsCount:I

    add-int/lit8 v11, v4, 0x1

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->sharpenTool:I

    add-int/lit8 v12, v4, 0x2

    iput v11, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsTool:I

    const/4 v11, 0x3

    add-int/2addr v4, v11

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->rowsCount:I

    iput v12, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsTool:I

    if-eqz v3, :cond_4

    iget v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->enhanceValue:F

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceValue:F

    iget v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->softenSkinValue:F

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->softenSkinValue:F

    iget v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->exposureValue:F

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->exposureValue:F

    iget v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->contrastValue:F

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->contrastValue:F

    iget v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->warmthValue:F

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->warmthValue:F

    iget v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->saturationValue:F

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->saturationValue:F

    iget v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->fadeValue:F

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->fadeValue:F

    iget v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->tintShadowsColor:I

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsColor:I

    iget v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->tintHighlightsColor:I

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsColor:I

    iget v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->highlightsValue:F

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->highlightsValue:F

    iget v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->shadowsValue:F

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->shadowsValue:F

    iget v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->vignetteValue:F

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->vignetteValue:F

    iget v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->grainValue:F

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->grainValue:F

    iget v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurType:I

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurType:I

    iget v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->sharpenValue:F

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->sharpenValue:F

    iget-object v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iput-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iget v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludeSize:F

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludeSize:F

    iget-object v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    iput-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    iget v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludeBlurSize:F

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludeBlurSize:F

    invoke-virtual/range {p6 .. p6}, Lorg/telegram/messenger/MediaController$SavedFilterState;->isEmpty()Z

    move-result v4

    iput-boolean v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->filtersEmpty:Z

    iget v4, v3, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurAngle:F

    iput v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurAngle:F

    iput-object v3, v0, Lorg/telegram/ui/Components/PhotoFilterView;->lastState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    :goto_2
    move-object/from16 v3, p3

    goto :goto_3

    :cond_4
    new-instance v3, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    invoke-direct {v3}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    const v3, 0x3eb33333    # 0.35f

    iput v3, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludeSize:F

    new-instance v3, Lorg/telegram/ui/Components/Point;

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v3, v4, v4}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    iput-object v3, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    const v3, 0x3e19999a    # 0.15f

    iput v3, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludeBlurSize:F

    const v3, 0x3fc90fdb

    iput v3, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurAngle:F

    iput-boolean v10, v0, Lorg/telegram/ui/Components/PhotoFilterView;->filtersEmpty:Z

    goto :goto_2

    :goto_3
    iput-object v3, v0, Lorg/telegram/ui/Components/PhotoFilterView;->bitmapToEdit:Landroid/graphics/Bitmap;

    move-object/from16 v3, p4

    iput-object v3, v0, Lorg/telegram/ui/Components/PhotoFilterView;->bitmapMask:Landroid/graphics/Bitmap;

    move/from16 v3, p5

    iput v3, v0, Lorg/telegram/ui/Components/PhotoFilterView;->orientation:I

    const/16 v3, 0x33

    if-eqz v2, :cond_5

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    new-instance v4, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/VideoEditTextureView;->setDelegate(Lorg/telegram/ui/Components/VideoEditTextureView$VideoEditTextureViewDelegate;)V

    goto :goto_4

    :cond_5
    iput-boolean v10, v0, Lorg/telegram/ui/Components/PhotoFilterView;->ownsTextureView:Z

    new-instance v4, Lorg/telegram/ui/Components/PhotoFilterView$1;

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView$1;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    if-eqz v5, :cond_6

    invoke-static {v9, v9, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v0, v4, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    new-instance v12, Lorg/telegram/ui/Components/PhotoFilterView$2;

    move-object/from16 v13, p11

    invoke-direct {v12, v0, v5, v13}, Lorg/telegram/ui/Components/PhotoFilterView$2;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;ZLorg/telegram/ui/Components/BlurringShader$BlurManager;)V

    invoke-virtual {v4, v12}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :goto_4
    new-instance v4, Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    if-eqz v5, :cond_7

    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    invoke-static {v9, v9, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v0, v4, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    new-instance v12, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda1;

    invoke-direct {v12, v0}, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v4, v12}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->setDelegate(Lorg/telegram/ui/Components/PhotoFilterBlurControl$PhotoFilterLinearBlurControlDelegate;)V

    new-instance v4, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    iget-object v12, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    invoke-direct {v4, v1, v12}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    new-instance v12, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda2;

    invoke-direct {v12, v0}, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v4, v12}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->setDelegate(Lorg/telegram/ui/Components/PhotoFilterCurvesControl$PhotoFilterCurvesControlDelegate;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    if-eqz v5, :cond_8

    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    invoke-static {v9, v9, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v0, v4, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->toolsView:Landroid/widget/FrameLayout;

    if-nez v5, :cond_9

    const/16 v13, 0x28

    goto :goto_5

    :cond_9
    const/4 v13, 0x0

    :goto_5
    add-int/lit16 v13, v13, 0xba

    const/16 v14, 0x53

    invoke-static {v9, v13, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v0, v4, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v13, -0x1000000

    invoke-virtual {v4, v13}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v13, v0, Lorg/telegram/ui/Components/PhotoFilterView;->toolsView:Landroid/widget/FrameLayout;

    const/16 v15, 0x30

    invoke-static {v9, v15, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v13, v4, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v13, Landroid/widget/TextView;

    invoke-direct {v13, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v13, v0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    const/high16 v14, 0x41600000    # 14.0f

    invoke-virtual {v13, v10, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v13, v0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v13, v0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    const/16 v11, 0x11

    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v11, v0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    const v13, -0xc2c2c3

    invoke-static {v13, v7}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v11, v0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    const/high16 v13, 0x41a00000    # 20.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v11, v12, v7, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    sget v11, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    const/4 v11, -0x2

    invoke-static {v11, v9, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v4, v6, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v10, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_chat_editMediaButton:I

    invoke-direct {v0, v12}, Lorg/telegram/ui/Components/PhotoFilterView;->getThemedColor(I)I

    move-result v14

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    const/16 v14, 0x11

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    const v14, -0xc2c2c3

    invoke-static {v14, v7}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v6, v14}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v6, v14, v7, v3, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v3, v0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->Done:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v3, v0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    const/16 v6, 0x35

    invoke-static {v11, v9, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v11, v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tuneItem:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tuneItem:Landroid/widget/ImageView;

    sget v14, Lorg/telegram/messenger/R$drawable;->msg_photo_settings:I

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tuneItem:Landroid/widget/ImageView;

    new-instance v14, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, v12}, Lorg/telegram/ui/Components/PhotoFilterView;->getThemedColor(I)I

    move-result v12

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v14, v12, v13}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tuneItem:Landroid/widget/ImageView;

    const v12, 0x40ffffff    # 7.9999995f

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tuneItem:Landroid/widget/ImageView;

    const/16 v13, 0x38

    invoke-static {v13, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v3, v4, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->tuneItem:Landroid/widget/ImageView;

    new-instance v14, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda3;

    invoke-direct {v14, v0}, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v4, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurItem:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurItem:Landroid/widget/ImageView;

    sget v14, Lorg/telegram/messenger/R$drawable;->msg_photo_blur:I

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurItem:Landroid/widget/ImageView;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v4, v14}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurItem:Landroid/widget/ImageView;

    invoke-static {v13, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v3, v4, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurItem:Landroid/widget/ImageView;

    new-instance v14, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda4;

    invoke-direct {v14, v0}, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v4, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v2, :cond_a

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurItem:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_a
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveItem:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveItem:Landroid/widget/ImageView;

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_photo_curve:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveItem:Landroid/widget/ImageView;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveItem:Landroid/widget/ImageView;

    invoke-static {v13, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveItem:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda5;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lorg/telegram/ui/Components/PhotoFilterView$RecyclerListViewWithShadows;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/PhotoFilterView$RecyclerListViewWithShadows;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v7}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v8}, Landroid/view/View;->setOverScrollMode(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView$ToolsAdapter;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->toolsView:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v5, :cond_b

    const/16 v4, 0x3c

    goto :goto_6

    :cond_b
    const/4 v4, 0x0

    :goto_6
    add-int/lit8 v4, v4, 0x78

    const/16 v6, 0x33

    invoke-static {v9, v4, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveLayout:Landroid/widget/FrameLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->toolsView:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveLayout:Landroid/widget/FrameLayout;

    if-nez v5, :cond_c

    const/16 v4, 0x28

    :goto_7
    const/16 v6, 0x28

    goto :goto_8

    :cond_c
    const/4 v4, 0x0

    goto :goto_7

    :goto_8
    add-int/2addr v4, v6

    int-to-float v4, v4

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v16, -0x1

    const/high16 v17, 0x429c0000    # 78.0f

    const/16 v18, 0x1

    const/16 v19, 0x0

    move/from16 v20, v4

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v3, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveLayout:Landroid/widget/FrameLayout;

    invoke-static {v11, v11, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x4

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v3, :cond_12

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveRadioButton:[Lorg/telegram/ui/Components/RadioButton;

    new-instance v11, Lorg/telegram/ui/Components/RadioButton;

    invoke-direct {v11, v1}, Lorg/telegram/ui/Components/RadioButton;-><init>(Landroid/content/Context;)V

    aput-object v11, v6, v4

    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveRadioButton:[Lorg/telegram/ui/Components/RadioButton;

    aget-object v6, v6, v4

    const/high16 v11, 0x41a00000    # 20.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-virtual {v6, v12}, Lorg/telegram/ui/Components/RadioButton;->setSize(I)V

    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveRadioButton:[Lorg/telegram/ui/Components/RadioButton;

    aget-object v6, v6, v4

    const/16 v12, 0x1e

    const/16 v13, 0x31

    const/16 v14, 0x1e

    invoke-static {v14, v12, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v3, v6, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v12, 0x41400000    # 12.0f

    invoke-virtual {v6, v10, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v12, 0x10

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setGravity(I)V

    if-nez v4, :cond_d

    sget v12, Lorg/telegram/messenger/R$string;->CurvesAll:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v12, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveRadioButton:[Lorg/telegram/ui/Components/RadioButton;

    aget-object v12, v12, v4

    invoke-virtual {v12, v9, v9}, Lorg/telegram/ui/Components/RadioButton;->setColor(II)V

    :goto_a
    const/4 v12, 0x3

    goto/16 :goto_c

    :cond_d
    if-ne v4, v10, :cond_e

    sget v12, Lorg/telegram/messenger/R$string;->CurvesRed:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v12, -0x19b2b3

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v13, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveRadioButton:[Lorg/telegram/ui/Components/RadioButton;

    aget-object v13, v13, v4

    :goto_b
    invoke-virtual {v13, v12, v12}, Lorg/telegram/ui/Components/RadioButton;->setColor(II)V

    goto :goto_a

    :cond_e
    if-ne v4, v8, :cond_f

    sget v12, Lorg/telegram/messenger/R$string;->CurvesGreen:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v12, -0xa544a1

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v13, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveRadioButton:[Lorg/telegram/ui/Components/RadioButton;

    aget-object v13, v13, v4

    goto :goto_b

    :cond_f
    const/4 v12, 0x3

    if-ne v4, v12, :cond_10

    sget v13, Lorg/telegram/messenger/R$string;->CurvesBlue:I

    invoke-static {v13}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v13, -0xc25212

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v14, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curveRadioButton:[Lorg/telegram/ui/Components/RadioButton;

    aget-object v14, v14, v4

    invoke-virtual {v14, v13, v13}, Lorg/telegram/ui/Components/RadioButton;->setColor(II)V

    :cond_10
    :goto_c
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v16, -0x2

    const/high16 v17, -0x40000000    # -2.0f

    const/16 v18, 0x31

    const/16 v19, 0x0

    const/high16 v20, 0x42180000    # 38.0f

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v3, v6, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-nez v4, :cond_11

    const/4 v6, 0x0

    goto :goto_d

    :cond_11
    const/high16 v6, 0x41f00000    # 30.0f

    :goto_d
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, -0x2

    const/16 v16, -0x2

    const/16 v17, 0x0

    move/from16 p4, v15

    move/from16 p5, v16

    move/from16 p6, v6

    move/from16 p7, v17

    move/from16 p8, v13

    move/from16 p9, v14

    invoke-static/range {p4 .. p9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda6;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x4

    goto/16 :goto_9

    :cond_12
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLayout:Landroid/widget/FrameLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->toolsView:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLayout:Landroid/widget/FrameLayout;

    const/16 v4, 0x28

    if-nez v5, :cond_13

    const/16 v7, 0x28

    :cond_13
    add-int/2addr v7, v4

    int-to-float v4, v7

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x118

    const/high16 v9, 0x42700000    # 60.0f

    const/4 v11, 0x1

    const/4 v12, 0x0

    move/from16 p2, v8

    move/from16 p3, v9

    move/from16 p4, v11

    move/from16 p5, v12

    move/from16 p6, v4

    move/from16 p7, v6

    move/from16 p8, v7

    invoke-static/range {p2 .. p8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    const/high16 v4, 0x41500000    # 13.0f

    invoke-virtual {v2, v10, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->BlurOff:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLayout:Landroid/widget/FrameLayout;

    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    const/16 v7, 0x50

    const/high16 v8, 0x42700000    # 60.0f

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    new-instance v6, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda7;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    invoke-virtual {v2, v10, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->BlurRadial:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLayout:Landroid/widget/FrameLayout;

    iget-object v6, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x50

    const/high16 v11, 0x42a00000    # 80.0f

    const/16 v12, 0x33

    const/high16 v13, 0x42c80000    # 100.0f

    const/4 v14, 0x0

    move/from16 p2, v9

    move/from16 p3, v11

    move/from16 p4, v12

    move/from16 p5, v13

    move/from16 p6, v14

    move/from16 p7, v7

    move/from16 p8, v8

    invoke-static/range {p2 .. p8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    new-instance v6, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda8;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    invoke-virtual {v1, v10, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->BlurLinear:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLayout:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x50

    const/high16 v7, 0x42a00000    # 80.0f

    const/16 v8, 0x33

    const/high16 v9, 0x43480000    # 200.0f

    const/4 v10, 0x0

    move/from16 p1, v6

    move/from16 p2, v7

    move/from16 p3, v8

    move/from16 p4, v9

    move/from16 p5, v10

    move/from16 p6, v3

    move/from16 p7, v4

    invoke-static/range {p1 .. p7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    new-instance v2, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda9;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/PhotoFilterView$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/PhotoFilterView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoFilterView;->updateSelectedBlurType()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_15

    iget-boolean v1, v0, Lorg/telegram/ui/Components/PhotoFilterView;->inBubbleMode:Z

    if-nez v1, :cond_15

    if-eqz v5, :cond_15

    iget-boolean v1, v0, Lorg/telegram/ui/Components/PhotoFilterView;->ownsTextureView:Z

    if-eqz v1, :cond_14

    iget-object v1, v0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :cond_14
    iget-object v1, v0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :cond_15
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/FilterGLThread;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    return-object p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/PhotoFilterView;Lorg/telegram/ui/Components/FilterGLThread;)Lorg/telegram/ui/Components/FilterGLThread;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/PhotoFilterView;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->bitmapToEdit:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceValue:F

    return p0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceValue:F

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->highlightsTool:I

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->highlightsValue:F

    return p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->highlightsValue:F

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->contrastTool:I

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->contrastValue:F

    return p0
.end method

.method static synthetic access$1402(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->contrastValue:F

    return p1
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->exposureTool:I

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->exposureValue:F

    return p0
.end method

.method static synthetic access$1602(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->exposureValue:F

    return p1
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->warmthTool:I

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->warmthValue:F

    return p0
.end method

.method static synthetic access$1802(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->warmthValue:F

    return p1
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->saturationTool:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->orientation:I

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->saturationValue:F

    return p0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->saturationValue:F

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->vignetteTool:I

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->vignetteValue:F

    return p0
.end method

.method static synthetic access$2202(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->vignetteValue:F

    return p1
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->shadowsTool:I

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->shadowsValue:F

    return p0
.end method

.method static synthetic access$2402(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->shadowsValue:F

    return p1
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->grainTool:I

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->grainValue:F

    return p0
.end method

.method static synthetic access$2602(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->grainValue:F

    return p1
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->sharpenTool:I

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->sharpenValue:F

    return p0
.end method

.method static synthetic access$2802(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->sharpenValue:F

    return p1
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->fadeTool:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/PhotoFilterView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->isMirrored:Z

    return p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->fadeValue:F

    return p0
.end method

.method static synthetic access$3002(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->fadeValue:F

    return p1
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->softenSkinTool:I

    return p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/PhotoFilterView;)F
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->softenSkinValue:F

    return p0
.end method

.method static synthetic access$3202(Lorg/telegram/ui/Components/PhotoFilterView;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->softenSkinValue:F

    return p1
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsTool:I

    return p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsColor:I

    return p0
.end method

.method static synthetic access$3402(Lorg/telegram/ui/Components/PhotoFilterView;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsColor:I

    return p1
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsTool:I

    return p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsColor:I

    return p0
.end method

.method static synthetic access$3602(Lorg/telegram/ui/Components/PhotoFilterView;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsColor:I

    return p1
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/PhotoFilterView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->updateFiltersEmpty()V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->gradientTop:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->gradientBottom:I

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/PhotoFilterView;)Landroid/view/TextureView;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->rowsCount:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/PhotoFilterView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceTool:I

    return p0
.end method

.method private fixLayout(II)V
    .locals 12

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->ownLayout:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x41e00000    # 28.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr p1, v1

    const/high16 v1, 0x43560000    # 214.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    const/4 v4, 0x0

    if-lt v2, v3, :cond_1

    iget-boolean v5, p0, Lorg/telegram/ui/Components/PhotoFilterView;->inBubbleMode:Z

    if-nez v5, :cond_1

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    add-int/2addr v1, v5

    sub-int/2addr p2, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->bitmapToEdit:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    iget v5, p0, Lorg/telegram/ui/Components/PhotoFilterView;->orientation:I

    rem-int/lit16 v5, v5, 0x168

    const/16 v6, 0x5a

    if-eq v5, v6, :cond_3

    const/16 v6, 0x10e

    if-ne v5, v6, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    :goto_1
    int-to-float v5, v5

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    goto :goto_1

    :goto_3
    int-to-float v6, p1

    div-float v7, v6, v1

    int-to-float v8, p2

    div-float v9, v8, v5

    cmpl-float v10, v7, v9

    if-lez v10, :cond_5

    mul-float v1, v1, v9

    float-to-double v9, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v1, v9

    int-to-float v1, v1

    move v5, v1

    move v1, v8

    goto :goto_4

    :cond_5
    mul-float v5, v5, v7

    float-to-double v9, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v1, v9

    int-to-float v1, v1

    move v5, v6

    :goto_4
    sub-float/2addr v6, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    const/high16 v9, 0x41600000    # 14.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v6, v10

    float-to-double v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v6, v10

    sub-float/2addr v8, v1

    div-float/2addr v8, v7

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v8, v7

    if-lt v2, v3, :cond_6

    iget-boolean v7, p0, Lorg/telegram/ui/Components/PhotoFilterView;->inBubbleMode:Z

    if-nez v7, :cond_6

    sget v7, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_5

    :cond_6
    const/4 v7, 0x0

    :goto_5
    int-to-float v7, v7

    add-float/2addr v8, v7

    float-to-double v7, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    float-to-int v5, v5

    float-to-int v1, v1

    iget-boolean v8, p0, Lorg/telegram/ui/Components/PhotoFilterView;->ownsTextureView:Z

    if-eqz v8, :cond_7

    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    iput v6, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v7, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v5, v8, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v1, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :cond_7
    iget-object v8, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    int-to-float v6, v6

    if-lt v2, v3, :cond_8

    iget-boolean v2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->inBubbleMode:Z

    if-nez v2, :cond_8

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_6

    :cond_8
    const/4 v2, 0x0

    :goto_6
    sub-int/2addr v7, v2

    int-to-float v2, v7

    int-to-float v3, v5

    int-to-float v1, v1

    invoke-virtual {v8, v6, v2, v3, v1}, Lorg/telegram/ui/Components/PhotoFilterCurvesControl;->setActualArea(FFFF)V

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->setActualAreaSize(FF)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v2, 0x42180000    # 38.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v2, p2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr p2, v0

    iput p2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p2

    if-eqz p2, :cond_a

    const/high16 p2, 0x42ac0000    # 86.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    mul-int/lit8 p2, p2, 0xa

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-ge p2, p1, :cond_9

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_7

    :cond_9
    const/4 p1, -0x1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :cond_a
    :goto_7
    return-void
.end method

.method private getThemedColor(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private synthetic lambda$new$0(Lorg/telegram/ui/Components/FilterGLThread;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/FilterGLThread;->setFilterGLThreadDelegate(Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;)V

    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/ui/Components/Point;FFF)V
    .locals 0

    iput p3, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludeSize:F

    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    iput p2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludeBlurSize:F

    iput p4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurAngle:F

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/FilterGLThread;->requestRender(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 2

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->updateFiltersEmpty()V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FilterGLThread;->requestRender(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 3

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tuneItem:Landroid/widget/ImageView;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_editMediaButton:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->getThemedColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurItem:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveItem:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->switchMode()V

    return-void
.end method

.method private synthetic lambda$new$4(Landroid/view/View;)V
    .locals 4

    const/4 p1, 0x1

    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tuneItem:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurItem:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_editMediaButton:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/PhotoFilterView;->getThemedColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveItem:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->switchMode()V

    return-void
.end method

.method private synthetic lambda$new$5(Landroid/view/View;)V
    .locals 3

    const/4 p1, 0x2

    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tuneItem:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurItem:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveItem:Landroid/widget/ImageView;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_editMediaButton:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->getThemedColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->switchMode()V

    return-void
.end method

.method private synthetic lambda$new$6(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iput p1, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->activeType:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveRadioButton:[Lorg/telegram/ui/Components/RadioButton;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    if-ne v1, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v2, v4, v3}, Lorg/telegram/ui/Components/RadioButton;->setChecked(ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$new$7(Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurType:I

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->updateSelectedBlurType()V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/FilterGLThread;->requestRender(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$8(Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x1

    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurType:I

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->updateSelectedBlurType()V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->setType(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/FilterGLThread;->requestRender(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$9(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x2

    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurType:I

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->updateSelectedBlurType()V

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->setType(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/FilterGLThread;->requestRender(Z)V

    :cond_0
    return-void
.end method

.method private setShowOriginal(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->showOriginal:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->showOriginal:Z

    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/FilterGLThread;->requestRender(Z)V

    :cond_1
    return-void
.end method

.method private updateFiltersEmpty()V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceValue:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->softenSkinValue:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->exposureValue:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->contrastValue:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->warmthValue:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->saturationValue:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->fadeValue:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsColor:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsColor:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->highlightsValue:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->shadowsValue:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->vignetteValue:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->grainValue:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurType:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->sharpenValue:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->shouldBeSkipped()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->filtersEmpty:Z

    return-void
.end method

.method private updateSelectedBlurType()V
    .locals 8

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurType:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_blur_off:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_editMediaButton:I

    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/PhotoFilterView;->getThemedColor(I)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    invoke-virtual {v4, v2, v0, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/PhotoFilterView;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_blur_radial:I

    invoke-virtual {v0, v3, v2, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_blur_linear:I

    invoke-virtual {v0, v3, v2, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    :cond_0
    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_blur_off:I

    invoke-virtual {v0, v3, v4, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_blur_radial:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_editMediaButton:I

    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/PhotoFilterView;->getThemedColor(I)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    invoke-virtual {v4, v2, v0, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/PhotoFilterView;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_blur_off:I

    invoke-virtual {v0, v3, v4, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_blur_radial:I

    invoke-virtual {v0, v3, v4, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurRadialButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurOffButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_blur_linear:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_editMediaButton:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/PhotoFilterView;->getThemedColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLinearButton:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/PhotoFilterView;->getThemedColor(I)I

    move-result v1

    goto/16 :goto_1

    :cond_2
    :goto_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->updateFiltersEmpty()V

    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p3

    iget-object p4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->paintingOverlay:Lorg/telegram/ui/Components/PaintingOverlay;

    if-eqz p4, :cond_2

    iget-object p4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    if-ne p2, p4, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object p2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    int-to-float p2, p2

    iget-object p4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p1, p2, p4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->bitmapMask:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->maskRect:Landroid/graphics/Rect;

    iget-object p4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v1, p4, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget p2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->orientation:I

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->maskMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    iget-object p2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->maskMatrix:Landroid/graphics/Matrix;

    iget p4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->orientation:I

    int-to-float p4, p4

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->bitmapMask:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->bitmapMask:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p2, p4, v0, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object p2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->bitmapMask:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    iget-object p4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->bitmapMask:Landroid/graphics/Bitmap;

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    sub-int/2addr p2, p4

    int-to-float p2, p2

    div-float/2addr p2, v1

    iget-object p4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->maskMatrix:Landroid/graphics/Matrix;

    neg-float v0, p2

    invoke-virtual {p4, p2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->maskMatrix:Landroid/graphics/Matrix;

    iget-object p4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->maskRect:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p4

    int-to-float p4, p4

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->bitmapMask:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p4, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->maskRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->bitmapMask:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p2, p4, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object p2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->bitmapMask:Landroid/graphics/Bitmap;

    iget-object p4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->maskMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->maskPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->bitmapMask:Landroid/graphics/Bitmap;

    iget-object p4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->maskRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->maskPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, p4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_1
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    iget-object p4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->paintingOverlay:Lorg/telegram/ui/Components/PaintingOverlay;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p2, p4

    invoke-virtual {p1, p2, p2}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object p2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->paintingOverlay:Lorg/telegram/ui/Components/PaintingOverlay;

    invoke-virtual {p2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return p3
.end method

.method public fillAndGetCurveBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->fillBuffer()V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->curveBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterGLThread;->getTexture()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getBlurAngle()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurAngle:F

    return v0
.end method

.method public getBlurControl()Lorg/telegram/ui/Components/PhotoFilterBlurControl;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    return-object v0
.end method

.method public getBlurExcludeBlurSize()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludeBlurSize:F

    return v0
.end method

.method public getBlurExcludePoint()Lorg/telegram/ui/Components/Point;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    return-object v0
.end method

.method public getBlurExcludeSize()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludeSize:F

    return v0
.end method

.method public getBlurType()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurType:I

    return v0
.end method

.method public getCancelTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->cancelTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getContrastValue()F
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->contrastValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const v1, 0x3e99999a    # 0.3f

    mul-float v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    return v0
.end method

.method public getCurveControl()Lorg/telegram/ui/Components/PhotoFilterCurvesControl;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    return-object v0
.end method

.method public getDoneTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getEnhanceValue()F
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getExposureValue()F
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->exposureValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getFadeValue()F
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->fadeValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getGrainValue()F
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->grainValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const v1, 0x3d23d70a    # 0.04f

    mul-float v0, v0, v1

    return v0
.end method

.method public getHighlightsValue()F
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->highlightsValue:F

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float v0, v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    add-float/2addr v0, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getMyTextureView()Landroid/view/TextureView;
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->ownsTextureView:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->ownLayout:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSaturationValue()F
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->saturationValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const v1, 0x3f866666    # 1.05f

    mul-float v0, v0, v1

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    return v0
.end method

.method public getSavedFilterState()Lorg/telegram/messenger/MediaController$SavedFilterState;
    .locals 2

    new-instance v0, Lorg/telegram/messenger/MediaController$SavedFilterState;

    invoke-direct {v0}, Lorg/telegram/messenger/MediaController$SavedFilterState;-><init>()V

    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceValue:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->enhanceValue:F

    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->exposureValue:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->exposureValue:F

    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->contrastValue:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->contrastValue:F

    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->warmthValue:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->warmthValue:F

    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->saturationValue:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->saturationValue:F

    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->fadeValue:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->fadeValue:F

    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->softenSkinValue:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->softenSkinValue:F

    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsColor:I

    iput v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->tintShadowsColor:I

    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsColor:I

    iput v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->tintHighlightsColor:I

    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->highlightsValue:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->highlightsValue:F

    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->shadowsValue:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->shadowsValue:F

    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->vignetteValue:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->vignetteValue:F

    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->grainValue:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->grainValue:F

    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurType:I

    iput v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurType:I

    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->sharpenValue:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->sharpenValue:F

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iput-object v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludeSize:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludeSize:F

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    iput-object v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludePoint:Lorg/telegram/ui/Components/Point;

    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurExcludeBlurSize:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurExcludeBlurSize:F

    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurAngle:F

    iput v1, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->blurAngle:F

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->lastState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    return-object v0
.end method

.method public getShadowsValue()F
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->shadowsValue:F

    const v1, 0x3f0ccccd    # 0.55f

    mul-float v0, v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    add-float/2addr v0, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getSharpenValue()F
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->sharpenValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const v1, 0x3f19999a    # 0.6f

    mul-float v0, v0, v1

    const v1, 0x3de147ae    # 0.11f

    add-float/2addr v0, v1

    return v0
.end method

.method public getSoftenSkinValue()F
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->softenSkinValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getTintHighlightsColor()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsColor:I

    return v0
.end method

.method public getTintHighlightsIntensityValue()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsColor:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_0
    return v0
.end method

.method public getTintShadowsColor()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsColor:I

    return v0
.end method

.method public getTintShadowsIntensityValue()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsColor:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_0
    return v0
.end method

.method public getToolsView()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->toolsView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getUiBlurBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterGLThread;->getUiBlurBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getVignetteValue()F
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->vignetteValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getWarmthValue()F
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->warmthValue:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public hasChanges()Z
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->lastState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget v3, p0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceValue:F

    iget v4, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->enhanceValue:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    iget v3, p0, Lorg/telegram/ui/Components/PhotoFilterView;->contrastValue:F

    iget v4, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->contrastValue:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    iget v3, p0, Lorg/telegram/ui/Components/PhotoFilterView;->highlightsValue:F

    iget v4, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->highlightsValue:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    iget v3, p0, Lorg/telegram/ui/Components/PhotoFilterView;->exposureValue:F

    iget v4, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->exposureValue:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    iget v3, p0, Lorg/telegram/ui/Components/PhotoFilterView;->warmthValue:F

    iget v4, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->warmthValue:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    iget v3, p0, Lorg/telegram/ui/Components/PhotoFilterView;->saturationValue:F

    iget v4, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->saturationValue:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    iget v3, p0, Lorg/telegram/ui/Components/PhotoFilterView;->vignetteValue:F

    iget v4, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->vignetteValue:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    iget v3, p0, Lorg/telegram/ui/Components/PhotoFilterView;->shadowsValue:F

    iget v4, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->shadowsValue:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    iget v3, p0, Lorg/telegram/ui/Components/PhotoFilterView;->grainValue:F

    iget v4, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->grainValue:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    iget v3, p0, Lorg/telegram/ui/Components/PhotoFilterView;->sharpenValue:F

    iget v4, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->sharpenValue:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    iget v3, p0, Lorg/telegram/ui/Components/PhotoFilterView;->fadeValue:F

    iget v4, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->fadeValue:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    iget v3, p0, Lorg/telegram/ui/Components/PhotoFilterView;->softenSkinValue:F

    iget v4, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->softenSkinValue:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    iget v3, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsColor:I

    iget v4, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->tintHighlightsColor:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsColor:I

    iget v0, v0, Lorg/telegram/messenger/MediaController$SavedFilterState;->tintShadowsColor:I

    if-ne v3, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->shouldBeSkipped()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceValue:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->contrastValue:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->highlightsValue:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->exposureValue:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->warmthValue:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->saturationValue:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->vignetteValue:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->shadowsValue:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->grainValue:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->sharpenValue:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->fadeValue:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->softenSkinValue:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintHighlightsColor:I

    if-nez v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tintShadowsColor:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->shouldBeSkipped()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    return v1
.end method

.method public init()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->fixLayout(II)V

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_4

    :cond_1
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PhotoFilterView;->setShowOriginal(Z)V

    goto :goto_2

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    instance-of v2, v0, Lorg/telegram/ui/Components/VideoEditTextureView;

    if-eqz v2, :cond_3

    check-cast v0, Lorg/telegram/ui/Components/VideoEditTextureView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v2, p1}, Lorg/telegram/ui/Components/VideoEditTextureView;->containsPoint(FF)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_4

    :goto_1
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->setShowOriginal(Z)V

    :cond_4
    :goto_2
    return v1
.end method

.method public setEnhanceValue(F)V
    .locals 4

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceValue:F

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->updateFiltersEmpty()V

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lorg/telegram/ui/Cells/PhotoEditToolCell;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceTool:I

    if-ne v2, v3, :cond_0

    check-cast v1, Lorg/telegram/ui/Cells/PhotoEditToolCell;

    sget v0, Lorg/telegram/messenger/R$string;->Enhance:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->enhanceValue:F

    const/16 v3, 0x64

    invoke-virtual {v1, v0, v2, p1, v3}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->setIconAndTextAndValue(Ljava/lang/String;FII)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/FilterGLThread;->requestRender(Z)V

    :cond_2
    return-void
.end method

.method public shouldDrawCurvesPass()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->shouldBeSkipped()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public shouldShowOriginal()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->showOriginal:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->filtersEmpty:Z

    if-eqz v0, :cond_0

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

.method public shutdown()V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->ownsTextureView:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterGLThread;->shutdown()V

    iput-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->textureView:Landroid/view/TextureView;

    instance-of v2, v0, Lorg/telegram/ui/Components/VideoEditTextureView;

    if-eqz v2, :cond_3

    check-cast v0, Lorg/telegram/ui/Components/VideoEditTextureView;

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->lastState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    if-nez v2, :cond_2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoEditTextureView;->setDelegate(Lorg/telegram/ui/Components/VideoEditTextureView$VideoEditTextureViewDelegate;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    if-eqz v0, :cond_3

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterShaders;->getFilterShadersDelegate(Lorg/telegram/messenger/MediaController$SavedFilterState;)Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FilterGLThread;->setFilterGLThreadDelegate(Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public switchMode()V
    .locals 6

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->selectedTool:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    goto :goto_2

    :cond_0
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurType:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->updateSelectedBlurType()V

    goto :goto_2

    :cond_2
    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesControl:Lorg/telegram/ui/Components/PhotoFilterCurvesControl;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curvesToolValue:Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;

    iput v1, v0, Lorg/telegram/ui/Components/PhotoFilterView$CurvesToolValue;->activeType:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveRadioButton:[Lorg/telegram/ui/Components/RadioButton;

    aget-object v4, v4, v0

    if-nez v0, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4, v5, v1}, Lorg/telegram/ui/Components/RadioButton;->setChecked(ZZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public updateColors()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->doneTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_editMediaButton:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tuneItem:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->tuneItem:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_editMediaButton:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/PhotoFilterView;->getThemedColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurItem:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->blurItem:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_editMediaButton:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/PhotoFilterView;->getThemedColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveItem:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->curveItem:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_editMediaButton:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/PhotoFilterView;->getThemedColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView;->updateSelectedBlurType()V

    return-void
.end method

.method public updateUiBlurGradient(II)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView;->eglThread:Lorg/telegram/ui/Components/FilterGLThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/FilterGLThread;->updateUiBlurGradient(II)V

    goto :goto_0

    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterView;->gradientTop:I

    iput p2, p0, Lorg/telegram/ui/Components/PhotoFilterView;->gradientBottom:I

    :goto_0
    return-void
.end method
