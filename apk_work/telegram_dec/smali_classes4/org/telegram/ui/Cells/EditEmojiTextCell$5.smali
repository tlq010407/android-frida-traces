.class Lorg/telegram/ui/Cells/EditEmojiTextCell$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/EditEmojiTextCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Ljava/lang/String;ZIILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/EditEmojiTextCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/EditEmojiTextCell;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell$5;->this$0:Lorg/telegram/ui/Cells/EditEmojiTextCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell$5;->this$0:Lorg/telegram/ui/Cells/EditEmojiTextCell;

    invoke-static {p1, p2}, Lorg/telegram/ui/Cells/EditEmojiTextCell;->access$402(Lorg/telegram/ui/Cells/EditEmojiTextCell;Z)Z

    iget-object p1, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell$5;->this$0:Lorg/telegram/ui/Cells/EditEmojiTextCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/EditEmojiTextCell;->access$500(Lorg/telegram/ui/Cells/EditEmojiTextCell;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell$5;->this$0:Lorg/telegram/ui/Cells/EditEmojiTextCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/EditEmojiTextCell;->access$300(Lorg/telegram/ui/Cells/EditEmojiTextCell;)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/EditEmojiTextCell$5;->this$0:Lorg/telegram/ui/Cells/EditEmojiTextCell;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/EditEmojiTextCell;->onFocusChanged(Z)V

    return-void
.end method
