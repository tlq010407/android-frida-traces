.class Lorg/telegram/ui/Components/EditTextEmoji$3;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EditTextEmoji;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/BaseFragment;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EditTextEmoji;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EditTextEmoji;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEmoji$3;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEmoji$3;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-static {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->access$900(Lorg/telegram/ui/Components/EditTextEmoji;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextEmoji$3;->this$0:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-static {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->access$700(Lorg/telegram/ui/Components/EditTextEmoji;)Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lorg/telegram/ui/Components/EditTextEmoji;->customEmojiButtonDraw(Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->dispatchDraw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method
