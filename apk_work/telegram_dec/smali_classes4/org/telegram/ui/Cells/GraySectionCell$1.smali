.class Lorg/telegram/ui/Cells/GraySectionCell$1;
.super Lorg/telegram/ui/Components/AnimatedTextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/GraySectionCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/GraySectionCell;Landroid/content/Context;ZZZ)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Cells/GraySectionCell$1;->this$0:Lorg/telegram/ui/Cells/GraySectionCell;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    return-void
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
