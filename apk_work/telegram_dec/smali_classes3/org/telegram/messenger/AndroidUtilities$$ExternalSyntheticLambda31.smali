.class public final synthetic Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic f$0:Landroid/view/ViewTreeObserver;

.field public final synthetic f$1:[Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field public final synthetic f$2:[Z

.field public final synthetic f$3:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewTreeObserver;[Landroid/view/ViewTreeObserver$OnPreDrawListener;[ZLjava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda31;->f$0:Landroid/view/ViewTreeObserver;

    iput-object p2, p0, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda31;->f$1:[Landroid/view/ViewTreeObserver$OnPreDrawListener;

    iput-object p3, p0, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda31;->f$2:[Z

    iput-object p4, p0, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda31;->f$3:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda31;->f$0:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda31;->f$1:[Landroid/view/ViewTreeObserver$OnPreDrawListener;

    iget-object v2, p0, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda31;->f$2:[Z

    iget-object v3, p0, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticLambda31;->f$3:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->$r8$lambda$ZiOkuc95UXSG6CpeCWMhtEP32xw(Landroid/view/ViewTreeObserver;[Landroid/view/ViewTreeObserver$OnPreDrawListener;[ZLjava/lang/Runnable;)Z

    move-result v0

    return v0
.end method
