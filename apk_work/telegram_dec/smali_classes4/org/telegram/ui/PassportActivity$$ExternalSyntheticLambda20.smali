.class public final synthetic Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PassportActivity;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PassportActivity;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda20;->f$0:Lorg/telegram/ui/PassportActivity;

    iput-object p2, p0, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda20;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda20;->f$0:Lorg/telegram/ui/PassportActivity;

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda20;->f$1:Landroid/content/Context;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/PassportActivity;->$r8$lambda$BpjDeQGdM2h8MyH4RRbLAHnh3xQ(Lorg/telegram/ui/PassportActivity;Landroid/content/Context;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
