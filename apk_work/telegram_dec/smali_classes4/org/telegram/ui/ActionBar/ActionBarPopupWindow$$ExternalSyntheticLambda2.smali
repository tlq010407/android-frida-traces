.class public final synthetic Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$$ExternalSyntheticLambda2;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$$ExternalSyntheticLambda2;->f$1:Landroid/view/View;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->$r8$lambda$-BK-uwjXCAdgJUTMwXcr2uJCIcY(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
