.class Lorg/telegram/ui/Cells/EditTextCell$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/EditTextCell;-><init>(Landroid/content/Context;Ljava/lang/String;ZZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/EditTextCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/EditTextCell;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Cells/EditTextCell$4;->this$0:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    iget-object p1, p0, Lorg/telegram/ui/Cells/EditTextCell$4;->this$0:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-static {p1, p2}, Lorg/telegram/ui/Cells/EditTextCell;->access$302(Lorg/telegram/ui/Cells/EditTextCell;Z)Z

    iget-object p1, p0, Lorg/telegram/ui/Cells/EditTextCell$4;->this$0:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/EditTextCell;->access$400(Lorg/telegram/ui/Cells/EditTextCell;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Cells/EditTextCell$4;->this$0:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/EditTextCell;->access$000(Lorg/telegram/ui/Cells/EditTextCell;)V

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/EditTextCell$4;->this$0:Lorg/telegram/ui/Cells/EditTextCell;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/EditTextCell;->onFocusChanged(Z)V

    return-void
.end method
