.class Lorg/telegram/ui/Cells/PhotoEditToolCell$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/PhotoEditToolCell;->setSeekBarDelegate(Lorg/telegram/ui/Components/PhotoEditorSeekBar$PhotoEditorSeekBarDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/PhotoEditToolCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/PhotoEditToolCell;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell$2;->this$0:Lorg/telegram/ui/Cells/PhotoEditToolCell;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoEditToolCell$2;->this$0:Lorg/telegram/ui/Cells/PhotoEditToolCell;

    invoke-static {p1}, Lorg/telegram/ui/Cells/PhotoEditToolCell;->access$300(Lorg/telegram/ui/Cells/PhotoEditToolCell;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method
