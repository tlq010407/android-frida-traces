.class public Lorg/telegram/ui/web/AddressBarList$BookmarkView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/Theme$Colorable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/web/AddressBarList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BookmarkView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/web/AddressBarList$BookmarkView$Factory;
    }
.end annotation


# instance fields
.field public final checkBox:Lorg/telegram/ui/Components/CheckBox2;

.field private final dividerPaint:Landroid/graphics/Paint;

.field public final iconView:Lorg/telegram/ui/Components/BackupImageView;

.field public final insertView:Landroid/widget/ImageView;

.field private needDivider:Z

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field public final subtextView:Landroid/widget/TextView;

.field private textColor:I

.field public final textLayout:Landroid/widget/LinearLayout;

.field public final textLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field public final textView:Landroid/widget/TextView;

.field public final timeView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v0, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->dividerPaint:Landroid/graphics/Paint;

    iput-object v2, v0, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const v3, 0x3cf5c28f    # 0.03f

    const/high16 v5, 0x3fa00000    # 1.25f

    invoke-static {v0, v3, v5}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    new-instance v3, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->iconView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    const/high16 v11, 0x41000000    # 8.0f

    const/high16 v12, 0x41000000    # 8.0f

    const/16 v6, 0x20

    const/high16 v7, 0x42000000    # 32.0f

    const/16 v8, 0x13

    const/high16 v9, 0x41200000    # 10.0f

    const/high16 v10, 0x41000000    # 8.0f

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->textLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->textView:Landroid/widget/TextView;

    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v5, v4, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v7, -0x2

    const/16 v8, 0x33

    const/4 v9, -0x1

    invoke-static {v9, v7, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->subtextView:Landroid/widget/TextView;

    const/high16 v7, 0x41500000    # 13.0f

    invoke-virtual {v5, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x2

    const/16 v12, 0x33

    const/4 v13, 0x0

    const/4 v14, 0x3

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v3, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v15, 0x428c0000    # 70.0f

    const/16 v16, 0x0

    const/high16 v11, -0x40000000    # -2.0f

    const/16 v12, 0x13

    const/high16 v13, 0x42800000    # 64.0f

    const/4 v14, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->textLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->timeView:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/view/View;->setTextAlignment(I)V

    const/high16 v15, 0x41400000    # 12.0f

    const/4 v10, -0x2

    const/16 v12, 0x15

    const/high16 v14, -0x3ee00000    # -10.0f

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->insertView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget v1, Lorg/telegram/messenger/R$drawable;->attach_arrow_right:I

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/high16 v15, 0x41000000    # 8.0f

    const/high16 v16, 0x41000000    # 8.0f

    const/16 v10, 0x20

    const/high16 v11, 0x42000000    # 32.0f

    const/high16 v13, 0x41000000    # 8.0f

    const/high16 v14, 0x41000000    # 8.0f

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/web/AddressBarList$BookmarkView$1;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x15

    invoke-direct {v1, v0, v3, v4, v2}, Lorg/telegram/ui/web/AddressBarList$BookmarkView$1;-><init>(Lorg/telegram/ui/web/AddressBarList$BookmarkView;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, v0, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-virtual {v1, v9, v2, v3}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/CheckBox2;->setDrawUnchecked(Z)V

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v3, 0x18

    const/high16 v4, 0x41c00000    # 24.0f

    const/16 v5, 0x13

    const/high16 v6, 0x41d00000    # 26.0f

    const/high16 v7, 0x41400000    # 12.0f

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/web/AddressBarList$BookmarkView;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->textColor:I

    return p0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->needDivider:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x426c0000    # 59.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    const v1, 0x3f28f5c3    # 0.66f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v3, 0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->dividerPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/high16 v0, 0x42600000    # 56.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public set(Lorg/telegram/messenger/MessageObject;ZLjava/lang/String;ZZ)V
    .locals 17

    .line 0
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v3, p5

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->updateColors()V

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    goto :goto_0

    :cond_0
    move-object v0, v4

    :goto_0
    if-eqz v0, :cond_1

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/web/AddressBarList;->getLink(Lorg/telegram/messenger/MessageObject;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    const/4 v6, 0x1

    invoke-static {v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->getHostAuthority(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lorg/telegram/ui/web/WebMetadataCache;->getInstance()Lorg/telegram/ui/web/WebMetadataCache;

    move-result-object v8

    invoke-virtual {v8, v7}, Lorg/telegram/ui/web/WebMetadataCache;->get(Ljava/lang/String;)Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;

    move-result-object v7

    const-string v8, ""

    const/4 v9, 0x0

    if-eqz v0, :cond_2

    iget-object v10, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->title:Ljava/lang/String;

    if-eqz v10, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    iget-object v10, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->site_name:Ljava/lang/String;

    if-eqz v10, :cond_3

    :goto_2
    iget-object v5, v1, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->textView:Landroid/widget/TextView;

    :goto_3
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_3
    if-eqz v7, :cond_4

    iget-object v10, v7, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->title:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    iget-object v5, v1, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->textView:Landroid/widget/TextView;

    iget-object v10, v7, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->title:Ljava/lang/String;

    goto :goto_3

    :cond_4
    if-eqz v7, :cond_5

    iget-object v10, v7, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->sitename:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    iget-object v5, v1, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->textView:Landroid/widget/TextView;

    iget-object v10, v7, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->sitename:Ljava/lang/String;

    goto :goto_3

    :cond_5
    :try_start_0
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    const-string v10, "\\."

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v10, v5

    add-int/lit8 v10, v10, -0x2

    aget-object v5, v5, v10

    iget-object v10, v1, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->textView:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    iget-object v5, v1, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->textView:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object v5, v1, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->iconView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/BackupImageView;->clearImage()V

    if-eqz v7, :cond_6

    iget-object v5, v7, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->favicon:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_6

    iget-object v7, v1, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->iconView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v7, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_7

    :cond_6
    if-eqz v0, :cond_7

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v5, :cond_7

    iget-object v10, v1, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->iconView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/high16 v7, 0x42000000    # 32.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {v5, v8, v6, v4, v6}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v5

    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v5, v8}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v11

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "_"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-static {v5, v13, v6, v4, v9}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v5

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v5, v13}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v13

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v16, p1

    invoke-virtual/range {v10 .. v16}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_7

    :cond_7
    iget-object v5, v1, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->textView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    if-nez v5, :cond_8

    move-object v5, v8

    goto :goto_5

    :cond_8
    iget-object v5, v1, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->textView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_5
    invoke-static {}, Ljava/text/BreakIterator;->getCharacterInstance()Ljava/text/BreakIterator;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v7}, Ljava/text/BreakIterator;->first()I

    move-result v8

    invoke-virtual {v7}, Ljava/text/BreakIterator;->next()I

    move-result v7

    invoke-virtual {v5, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    :goto_6
    new-instance v5, Lorg/telegram/ui/Components/CombinedDrawable;

    const/high16 v7, 0x40c00000    # 6.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iget v10, v1, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->textColor:I

    const v11, 0x3dcccccd    # 0.1f

    invoke-static {v10, v11}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v10

    invoke-static {v7, v10}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v7

    new-instance v10, Lorg/telegram/ui/web/AddressBarList$BookmarkView$2;

    invoke-direct {v10, v1, v8}, Lorg/telegram/ui/web/AddressBarList$BookmarkView$2;-><init>(Lorg/telegram/ui/web/AddressBarList$BookmarkView;Ljava/lang/String;)V

    invoke-direct {v5, v7, v10}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/high16 v7, 0x41e00000    # 28.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v5, v8, v7}, Lorg/telegram/ui/Components/CombinedDrawable;->setCustomSize(II)V

    iget-object v7, v1, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->iconView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v7, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_7
    iget-object v5, v1, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->timeView:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, v1, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->insertView:Landroid/widget/ImageView;

    if-eqz p2, :cond_a

    const/4 v7, 0x0

    :cond_a
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v0, :cond_b

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    :goto_8
    move-object v5, v0

    goto :goto_9

    :cond_b
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/web/AddressBarList;->getLink(Lorg/telegram/messenger/MessageObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :goto_9
    :try_start_1
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/browser/Browser;->IDN_toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7, v4}, Lorg/telegram/messenger/browser/Browser;->replaceHostname(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_a

    :catch_1
    move-exception v0

    :try_start_2
    invoke-static {v0, v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    :goto_a
    const-string v0, "\\+"

    const-string v4, "%2b"

    invoke-virtual {v5, v0, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "UTF-8"

    invoke-static {v0, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->urlWithoutFragment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_b

    :catch_2
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-object v0, v5

    :goto_b
    iget-object v4, v1, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->subtextView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, v1, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, v1, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v2, v5}, Lorg/telegram/messenger/AndroidUtilities;->highlightText(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->subtextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, v1, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v2, v5}, Lorg/telegram/messenger/AndroidUtilities;->highlightText(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    iget-object v0, v1, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v4, v1, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->textView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    invoke-static {v2, v4, v9}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->subtextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v4, v1, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->subtextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    invoke-static {v2, v4, v9}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    move/from16 v2, p4

    invoke-virtual {v0, v2, v9}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    iget-object v0, v1, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->textLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v2, 0x42500000    # 52.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v0, v1, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->textLayout:Landroid/widget/LinearLayout;

    iget-object v2, v1, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->textLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v3, v1, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->needDivider:Z

    xor-int/lit8 v0, v3, 0x1

    invoke-virtual {v1, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method public set(Lorg/telegram/ui/web/BrowserHistory$Entry;Ljava/lang/String;Z)V
    .locals 9

    .line 0
    invoke-virtual {p0}, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->updateColors()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lorg/telegram/ui/web/BrowserHistory$Entry;->url:Ljava/lang/String;

    iget-object v1, p1, Lorg/telegram/ui/web/BrowserHistory$Entry;->meta:Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;

    const-string v2, ""

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    iget-object v5, v1, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->title:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->textView:Landroid/widget/TextView;

    iget-object v6, v1, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->title:Ljava/lang/String;

    :goto_0
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    iget-object v5, v1, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->sitename:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->textView:Landroid/widget/TextView;

    iget-object v6, v1, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->sitename:Ljava/lang/String;

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\."

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    add-int/lit8 v6, v6, -0x2

    aget-object v5, v5, v6

    iget-object v6, p0, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->textView:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iget-object v5, p0, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->textView:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    if-eqz v1, :cond_3

    iget-object v1, v1, Lorg/telegram/ui/web/WebMetadataCache$WebMetadata;->favicon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->iconView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_4

    move-object v1, v2

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-static {}, Ljava/text/BreakIterator;->getCharacterInstance()Ljava/text/BreakIterator;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v5}, Ljava/text/BreakIterator;->first()I

    move-result v2

    invoke-virtual {v5}, Ljava/text/BreakIterator;->next()I

    move-result v5

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_3
    new-instance v1, Lorg/telegram/ui/Components/CombinedDrawable;

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iget v6, p0, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->textColor:I

    const v7, 0x3dcccccd    # 0.1f

    invoke-static {v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v6

    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/web/AddressBarList$BookmarkView$3;

    invoke-direct {v6, p0, v2}, Lorg/telegram/ui/web/AddressBarList$BookmarkView$3;-><init>(Lorg/telegram/ui/web/AddressBarList$BookmarkView;Ljava/lang/String;)V

    invoke-direct {v1, v5, v6}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/high16 v2, 0x41e00000    # 28.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v5, v2}, Lorg/telegram/ui/Components/CombinedDrawable;->setCustomSize(II)V

    iget-object v2, p0, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->iconView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_4
    iget-object v1, p0, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->insertView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :try_start_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/browser/Browser;->IDN_toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v1, v2, v5}, Lorg/telegram/messenger/browser/Browser;->replaceHostname(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v1

    :try_start_2
    invoke-static {v1, v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    :goto_5
    const-string v1, "\\+"

    const-string v2, "%2b"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_6
    iget-object v1, p0, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->subtextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, p2, v2}, Lorg/telegram/messenger/AndroidUtilities;->highlightText(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->subtextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, p2, v2}, Lorg/telegram/messenger/AndroidUtilities;->highlightText(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->textView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->subtextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->subtextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->timeView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController;->getFormatterDay()Lorg/telegram/messenger/time/FastDateFormat;

    move-result-object v0

    iget-wide v1, p1, Lorg/telegram/ui/web/BrowserHistory$Entry;->time:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p1, v4, v4}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    iget-object p1, p0, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->textLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    const/high16 p2, 0x428c0000    # 70.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object p1, p0, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->textLayout:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->textLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean p3, p0, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->needDivider:Z

    xor-int/lit8 p1, p3, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    return-void
.end method

.method public setColors(II)V
    .locals 3

    iput p2, p0, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->textColor:I

    iget-object v0, p0, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->subtextView:Landroid/widget/TextView;

    const v1, 0x3f0ccccd    # 0.55f

    invoke-static {p2, v1}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    invoke-static {p1, v2}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->timeView:Landroid/widget/TextView;

    invoke-static {p2, v1}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->insertView:Landroid/widget/ImageView;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const v1, 0x3f19999a    # 0.6f

    invoke-static {p2, v1}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p2

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public updateColors()V
    .locals 3

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object v1, p0, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v2, p0, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->setColors(II)V

    iget-object v0, p0, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->dividerPaint:Landroid/graphics/Paint;

    const v2, 0x3dcccccd    # 0.1f

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/web/AddressBarList$BookmarkView;->iconView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
