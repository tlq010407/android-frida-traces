.class Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/FolderBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TitleCell"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;
    }
.end annotation


# instance fields
.field private already:Z

.field private preview:Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;

.field private subtitleTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

.field final synthetic this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

.field private title:Ljava/lang/CharSequence;

.field private titleTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/FolderBottomSheet;Landroid/content/Context;ZLjava/lang/CharSequence;Ljava/util/ArrayList;Z)V
    .locals 22

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p4

    move-object/from16 v13, p1

    iput-object v13, v10, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-direct {v10, v11}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move/from16 v0, p3

    iput-boolean v0, v10, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;->already:Z

    sget v0, Lorg/telegram/messenger/R$string;->FolderLinkPreviewLeft:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lorg/telegram/messenger/R$string;->FolderLinkPreviewRight:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v14, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;

    if-nez v12, :cond_0

    const-string v0, ""

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v12}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    :goto_1
    const/4 v3, 0x0

    const/4 v9, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;-><init>(Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/ArrayList;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iput-object v14, v10, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;->preview:Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v15, -0x1

    const/high16 v16, 0x42300000    # 44.0f

    const/16 v17, 0x37

    const/16 v18, 0x0

    const v19, 0x418aa3d7    # 17.33f

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v10, v14, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-direct {v0, v11}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;->titleTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v10, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;->titleTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    const/high16 v2, 0x41a00000    # 20.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, v10, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;->titleTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, v10, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;->titleTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, v10, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;->titleTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v0, v4, v5}, Landroid/widget/TextView;->setLineSpacing(FF)V

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v12}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v4, v10, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;->titleTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x3f4ccccd    # 0.8f

    invoke-static {v0, v4, v5, v6}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;ZF)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v10, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;->title:Ljava/lang/CharSequence;

    iget-object v4, v10, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;->titleTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    move-object/from16 v7, p5

    invoke-static {v0, v7, v4, v5, v6}, Lorg/telegram/messenger/MessageObject;->replaceAnimatedEmoji(Ljava/lang/CharSequence;Ljava/util/ArrayList;Landroid/graphics/Paint$FontMetricsInt;ZF)Landroid/text/Spannable;

    move-result-object v0

    iput-object v0, v10, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;->title:Ljava/lang/CharSequence;

    iget-object v0, v10, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;->titleTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Components/FolderBottomSheet;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v10, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;->titleTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    if-eqz p6, :cond_1

    const/16 v4, 0x1a

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;->setCacheType(I)V

    iget-object v0, v10, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;->titleTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/FolderBottomSheet;->access$2600(Lorg/telegram/ui/Components/FolderBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    invoke-static {v4, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;->setEmojiColor(I)V

    iget-object v0, v10, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;->titleTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    const/high16 v17, 0x42000000    # 32.0f

    const/16 v18, 0x0

    const/4 v12, -0x1

    const/high16 v13, -0x40000000    # -2.0f

    const/16 v14, 0x30

    const/high16 v15, 0x42000000    # 32.0f

    const v16, 0x429c999a    # 78.3f

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v10, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-direct {v0, v11}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;->subtitleTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v10, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;->subtitleTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, v10, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;->subtitleTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    iget-object v0, v10, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;->subtitleTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, v10, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;->subtitleTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    const/4 v1, 0x0

    const v2, 0x3f933333    # 1.15f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    iget-object v0, v10, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;->subtitleTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    const/high16 v16, 0x42000000    # 32.0f

    const/16 v17, 0x0

    const/4 v11, -0x1

    const/high16 v12, -0x40000000    # -2.0f

    const/16 v13, 0x30

    const/high16 v14, 0x42000000    # 32.0f

    const/high16 v15, 0x42e20000    # 113.0f

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v10, v5, v5}, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;->setSelectedCount(IZ)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/high16 v0, 0x432c0000    # 172.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setSelectedCount(IZ)V
    .locals 3

    const/4 p1, 0x1

    const/4 p2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FolderBottomSheet;->access$2100(Lorg/telegram/ui/Components/FolderBottomSheet;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;->subtitleTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    sget v1, Lorg/telegram/messenger/R$string;->FolderLinkSubtitleRemove:I

    iget-object v2, p0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;->title:Ljava/lang/CharSequence;

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v2, p1, p2

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->formatSpannable(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;->already:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;->preview:Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;

    iget-object v1, p0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/FolderBottomSheet;->access$1000(Lorg/telegram/ui/Components/FolderBottomSheet;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/FolderBottomSheet;->access$1000(Lorg/telegram/ui/Components/FolderBottomSheet;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1, p2}, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell$FoldersPreview;->setCount(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FolderBottomSheet;->access$1000(Lorg/telegram/ui/Components/FolderBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FolderBottomSheet;->access$1000(Lorg/telegram/ui/Components/FolderBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;->subtitleTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    iget-object v1, p0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/FolderBottomSheet;->access$1000(Lorg/telegram/ui/Components/FolderBottomSheet;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/FolderBottomSheet;->access$1000(Lorg/telegram/ui/Components/FolderBottomSheet;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;->title:Ljava/lang/CharSequence;

    new-array p1, p1, [Ljava/lang/CharSequence;

    aput-object v2, p1, p2

    const-string p2, "FolderLinkSubtitleChats"

    invoke-static {p2, v1, p1}, Lorg/telegram/messenger/LocaleController;->formatPluralSpannable(Ljava/lang/String;I[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_4
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;->subtitleTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    sget v1, Lorg/telegram/messenger/R$string;->FolderLinkSubtitleAlready:I

    iget-object v2, p0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;->title:Ljava/lang/CharSequence;

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v2, p1, p2

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->formatSpannable(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FolderBottomSheet;->access$1000(Lorg/telegram/ui/Components/FolderBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;->this$0:Lorg/telegram/ui/Components/FolderBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FolderBottomSheet;->access$1000(Lorg/telegram/ui/Components/FolderBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;->subtitleTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    sget v1, Lorg/telegram/messenger/R$string;->FolderLinkSubtitle:I

    iget-object v2, p0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;->title:Ljava/lang/CharSequence;

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v2, p1, p2

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->formatSpannable(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    goto/16 :goto_0

    :cond_7
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;->subtitleTextView:Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    sget v1, Lorg/telegram/messenger/R$string;->FolderLinkSubtitleAlready:I

    iget-object v2, p0, Lorg/telegram/ui/Components/FolderBottomSheet$TitleCell;->title:Ljava/lang/CharSequence;

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v2, p1, p2

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->formatSpannable(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    goto/16 :goto_0

    :goto_5
    return-void
.end method
