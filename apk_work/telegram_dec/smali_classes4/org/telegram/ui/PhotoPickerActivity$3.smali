.class Lorg/telegram/ui/PhotoPickerActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarSubMenuItemDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoPickerActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoPickerActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoPickerActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity$3;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHideSubMenu()V
    .locals 0

    return-void
.end method

.method public onShowSubMenu()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$3;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$1500(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity$3;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v1}, Lorg/telegram/ui/PhotoPickerActivity;->access$1200(Lorg/telegram/ui/PhotoPickerActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lorg/telegram/messenger/R$string;->ShowAsGrid:I

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->ShowAsList:I

    goto :goto_0

    :goto_1
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$3;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$1500(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity$3;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v1}, Lorg/telegram/ui/PhotoPickerActivity;->access$1200(Lorg/telegram/ui/PhotoPickerActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_media:I

    goto :goto_2

    :cond_1
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_list:I

    :goto_2
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIcon(I)V

    return-void
.end method
