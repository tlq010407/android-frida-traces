.class Lorg/telegram/ui/Components/MessagePreviewView$TabsView$Tab;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/MessagePreviewView$TabsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Tab"
.end annotation


# instance fields
.field final bounds:Landroid/graphics/RectF;

.field final clickBounds:Landroid/graphics/RectF;

.field final id:I

.field final text:Lorg/telegram/ui/Components/Text;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$TabsView$Tab;->bounds:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$TabsView$Tab;->clickBounds:Landroid/graphics/RectF;

    iput p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$TabsView$Tab;->id:I

    new-instance p1, Lorg/telegram/ui/Components/Text;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v0

    const/high16 v1, 0x41600000    # 14.0f

    invoke-direct {p1, p2, v1, v0}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$TabsView$Tab;->text:Lorg/telegram/ui/Components/Text;

    return-void
.end method
