.class public final synthetic Lorg/telegram/ui/Components/MessagePreviewView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/MessagePreviewView;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/MessagePreviewView;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$$ExternalSyntheticLambda1;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$$ExternalSyntheticLambda1;->f$1:Z

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/Components/MessagePreviewView;->$r8$lambda$9FU00txIv0J4yl1rsgwwOgRqUCU(Lorg/telegram/ui/Components/MessagePreviewView;ZLandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
