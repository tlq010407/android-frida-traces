.class Lorg/telegram/ui/ChatActivity$TrackingWidthSimpleTextView;
.super Lorg/telegram/ui/ActionBar/SimpleTextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrackingWidthSimpleTextView"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field private trackWidth:Z


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$TrackingWidthSimpleTextView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/ChatActivity$TrackingWidthSimpleTextView;->trackWidth:Z

    return-void
.end method


# virtual methods
.method protected createLayout(I)Z
    .locals 3

    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->createLayout(I)Z

    move-result p1

    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$TrackingWidthSimpleTextView;->trackWidth:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$TrackingWidthSimpleTextView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextWidth()I

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$53002(Lorg/telegram/ui/ChatActivity;I)I

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$TrackingWidthSimpleTextView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$52800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$TrackingWidthSimpleTextView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$52800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$TrackingWidthSimpleTextView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$19600(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$TrackingWidthSimpleTextView;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$53000(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    return p1
.end method

.method public getTrackWidth()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$TrackingWidthSimpleTextView;->trackWidth:Z

    return v0
.end method

.method public setTrackWidth(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/ChatActivity$TrackingWidthSimpleTextView;->trackWidth:Z

    return-void
.end method
