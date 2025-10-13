.class public Lorg/telegram/ui/Components/PopupAudioView;
.super Lorg/telegram/ui/Cells/BaseCell;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;
.implements Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;


# instance fields
.field private TAG:I

.field private buttonPressed:I

.field private buttonState:I

.field private buttonX:I

.field private buttonY:I

.field private currentAccount:I

.field protected currentMessageObject:Lorg/telegram/messenger/MessageObject;

.field private lastTimeString:Ljava/lang/String;

.field private progressView:Lorg/telegram/ui/Components/ProgressView;

.field private seekBar:Lorg/telegram/ui/Components/SeekBar;

.field private seekBarX:I

.field private seekBarY:I

.field private timeLayout:Landroid/text/StaticLayout;

.field private timePaint:Landroid/text/TextPaint;

.field timeWidth:I

.field private timeX:I

.field private wasLayout:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/BaseCell;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/PopupAudioView;->wasLayout:Z

    iput p1, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    iput p1, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonPressed:I

    iput p1, p0, Lorg/telegram/ui/Components/PopupAudioView;->timeWidth:I

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/Components/PopupAudioView;->lastTimeString:Ljava/lang/String;

    new-instance p1, Landroid/text/TextPaint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/PopupAudioView;->timePaint:Landroid/text/TextPaint;

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget p1, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/DownloadController;->generateObserverTag()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/PopupAudioView;->TAG:I

    new-instance p1, Lorg/telegram/ui/Components/SeekBar;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/SeekBar;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBar:Lorg/telegram/ui/Components/SeekBar;

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/SeekBar;->setDelegate(Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;)V

    new-instance p1, Lorg/telegram/ui/Components/ProgressView;

    invoke-direct {p1}, Lorg/telegram/ui/Components/ProgressView;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/PopupAudioView;->progressView:Lorg/telegram/ui/Components/ProgressView;

    return-void
.end method

.method private didPressedButton()V
    .locals 7

    iget v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isContentUnread()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    iget v2, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->markMessageContentAsRead(Lorg/telegram/messenger/MessageObject;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->setContentIsRead()V

    :cond_0
    if-eqz v0, :cond_4

    iput v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/BaseCell;->invalidate()V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->pauseMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput v2, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    iget v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v3, v4, v1, v2}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    const/4 v0, 0x4

    iput v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    iget v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    iput v3, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public downloadAudioIfNeed()V
    .locals 5

    iget v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    const/4 v0, 0x3

    iput v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/BaseCell;->invalidate()V

    :cond_0
    return-void
.end method

.method public final getMessageObject()Lorg/telegram/messenger/MessageObject;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method public getObserverTag()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->TAG:I

    return v0
.end method

.method public synthetic isSeekBarDragAllowed()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate$-CC;->$default$isSeekBarDragAllowed(Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;)Z

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/DownloadController;->removeLoadingFileObserver(Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->wasLayout:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    :cond_1
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->y:I

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    move v5, v0

    move v4, v1

    goto :goto_0

    :cond_2
    move v4, v0

    move v5, v1

    :goto_0
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v0

    float-to-int v3, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setTop(IIIZZ)V

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v3, v1, v2}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;IIII)V

    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_4
    iget v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBarX:I

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBarY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->progressView:Lorg/telegram/ui/Components/ProgressView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ProgressView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_5
    :goto_1
    iget v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBarX:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBarY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBar:Lorg/telegram/ui/Components/SeekBar;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/SeekBar;->draw(Landroid/graphics/Canvas;)V

    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    iget-object v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->timePaint:Landroid/text/TextPaint;

    const v2, -0x5e554d

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_fileStatesDrawable:[[Landroid/graphics/drawable/Drawable;

    aget-object v0, v1, v0

    iget v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonPressed:I

    aget-object v0, v0, v1

    const/high16 v1, 0x42100000    # 36.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int v2, v1, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    iget v3, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonX:I

    add-int/2addr v2, v3

    iget v3, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonY:I

    add-int/2addr v1, v3

    invoke-static {v0, v2, v1}, Lorg/telegram/ui/Cells/BaseCell;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->timeX:I

    int-to-float v0, v0

    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->timeLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onFailedDownload(Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->updateButtonState()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    iget-object p2, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/high16 p2, 0x42580000    # 54.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBarX:I

    const/high16 p2, 0x41200000    # 10.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    iput p3, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonX:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    iget p4, p0, Lorg/telegram/ui/Components/PopupAudioView;->timeWidth:I

    sub-int/2addr p3, p4

    const/high16 p4, 0x41800000    # 16.0f

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    sub-int/2addr p3, p4

    iput p3, p0, Lorg/telegram/ui/Components/PopupAudioView;->timeX:I

    iget-object p3, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBar:Lorg/telegram/ui/Components/SeekBar;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    const/high16 p5, 0x428c0000    # 70.0f

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    sub-int/2addr p4, p5

    iget p5, p0, Lorg/telegram/ui/Components/PopupAudioView;->timeWidth:I

    sub-int/2addr p4, p5

    const/high16 p5, 0x41f00000    # 30.0f

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p3, p4, v0}, Lorg/telegram/ui/Components/SeekBar;->setSize(II)V

    iget-object p3, p0, Lorg/telegram/ui/Components/PopupAudioView;->progressView:Lorg/telegram/ui/Components/ProgressView;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    const/high16 v0, 0x42bc0000    # 94.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr p4, v0

    iget v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->timeWidth:I

    sub-int/2addr p4, v0

    iput p4, p3, Lorg/telegram/ui/Components/ProgressView;->width:I

    iget-object p3, p0, Lorg/telegram/ui/Components/PopupAudioView;->progressView:Lorg/telegram/ui/Components/ProgressView;

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    iput p4, p3, Lorg/telegram/ui/Components/ProgressView;->height:I

    const/high16 p3, 0x41500000    # 13.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    iput p3, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBarY:I

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonY:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->updateProgress()V

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lorg/telegram/ui/Components/PopupAudioView;->wasLayout:Z

    if-nez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/PopupAudioView;->wasLayout:Z

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x42600000    # 56.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onProgressDownload(Ljava/lang/String;JJ)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Components/PopupAudioView;->progressView:Lorg/telegram/ui/Components/ProgressView;

    long-to-float p2, p2

    long-to-float p3, p4

    div-float/2addr p2, p3

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ProgressView;->setProgress(F)V

    iget p1, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->updateButtonState()V

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/BaseCell;->invalidate()V

    return-void
.end method

.method public onProgressUpload(Ljava/lang/String;JJZ)V
    .locals 0

    return-void
.end method

.method public synthetic onSeekBarContinuousDrag(F)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate$-CC;->$default$onSeekBarContinuousDrag(Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;F)V

    return-void
.end method

.method public onSeekBarDrag(F)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, v0, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v1, p1}, Lorg/telegram/messenger/MediaController;->seekToProgress(Lorg/telegram/messenger/MessageObject;F)Z

    return-void
.end method

.method public synthetic onSeekBarPressed()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate$-CC;->$default$onSeekBarPressed(Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;)V

    return-void
.end method

.method public synthetic onSeekBarReleased()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate$-CC;->$default$onSeekBarReleased(Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;)V

    return-void
.end method

.method public onSuccessDownload(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->updateButtonState()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBar:Lorg/telegram/ui/Components/SeekBar;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBarX:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v6, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBarY:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/Components/SeekBar;->onTouch(IFF)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/BaseCell;->invalidate()V

    goto/16 :goto_3

    :cond_1
    const/high16 v4, 0x42100000    # 36.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_2

    iget v5, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonX:I

    int-to-float v6, v5

    cmpl-float v6, v0, v6

    if-ltz v6, :cond_6

    add-int/2addr v5, v4

    int-to-float v5, v5

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_6

    iget v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonY:I

    int-to-float v5, v0

    cmpl-float v5, v1, v5

    if-ltz v5, :cond_6

    add-int/2addr v0, v4

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_6

    iput v3, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonPressed:I

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/BaseCell;->invalidate()V

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    iget v5, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonPressed:I

    if-ne v5, v3, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x0

    if-ne v5, v3, :cond_3

    iput v6, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonPressed:I

    invoke-virtual {p0, v6}, Landroid/view/View;->playSoundEffect(I)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/PopupAudioView;->didPressedButton()V

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/BaseCell;->invalidate()V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_6

    iget v3, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonX:I

    int-to-float v5, v3

    cmpl-float v5, v0, v5

    if-ltz v5, :cond_5

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_5

    iget v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonY:I

    int-to-float v3, v0

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_5

    add-int/2addr v0, v4

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-lez v0, :cond_6

    :cond_5
    :goto_1
    iput v6, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonPressed:I

    goto :goto_0

    :cond_6
    :goto_2
    if-nez v2, :cond_7

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_7
    :goto_3
    return v2
.end method

.method public synthetic reverseWaveform()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate$-CC;->$default$reverseWaveform(Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;)Z

    move-result v0

    return v0
.end method

.method public setMessageObject(Lorg/telegram/messenger/MessageObject;)V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eq v0, p1, :cond_0

    iget v0, p1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    iput v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentAccount:I

    iget-object v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBar:Lorg/telegram/ui/Components/SeekBar;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAudioSeekbar:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAudioSeekbarFill:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAudioSeekbarSelected:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/SeekBar;->setColors(IIIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->progressView:Lorg/telegram/ui/Components/ProgressView;

    const v1, -0x261d15

    const v2, -0x793a08

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ProgressView;->setProgressColors(II)V

    iput-object p1, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/PopupAudioView;->wasLayout:Z

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->updateButtonState()V

    return-void
.end method

.method public updateButtonState()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getFileName()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/DownloadController;->removeLoadingFileObserver(Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    iget v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lorg/telegram/messenger/DownloadController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    iget v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v0, 0x2

    :goto_1
    iput v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->progressView:Lorg/telegram/ui/Components/ProgressView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ProgressView;->setProgress(F)V

    goto :goto_2

    :cond_4
    const/4 v1, 0x3

    iput v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageLoader;->getFileProgress(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->progressView:Lorg/telegram/ui/Components/ProgressView;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ProgressView;->setProgress(F)V

    :goto_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->updateProgress()V

    return-void
.end method

.method public updateProgress()V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBar:Lorg/telegram/ui/Components/SeekBar;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SeekBar;->isDragging()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBar:Lorg/telegram/ui/Components/SeekBar;

    iget-object v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v1, v1, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SeekBar;->setProgress(F)V

    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v3, :cond_2

    iget-wide v0, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:D

    double-to-int v0, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    :cond_4
    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->formatLongDuration(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->lastTimeString:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->timePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->timeWidth:I

    new-instance v0, Landroid/text/StaticLayout;

    iget-object v3, p0, Lorg/telegram/ui/Components/PopupAudioView;->timePaint:Landroid/text/TextPaint;

    iget v4, p0, Lorg/telegram/ui/Components/PopupAudioView;->timeWidth:I

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->timeLayout:Landroid/text/StaticLayout;

    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/BaseCell;->invalidate()V

    return-void
.end method
