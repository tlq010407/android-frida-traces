.class public final synthetic Lorg/telegram/ui/EditWidgetActivity$ListAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/EditWidgetActivity$ListAdapter;

.field public final synthetic f$1:Lorg/telegram/ui/Cells/GroupCreateUserCell;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/EditWidgetActivity$ListAdapter;Lorg/telegram/ui/Cells/GroupCreateUserCell;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/EditWidgetActivity$ListAdapter$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/EditWidgetActivity$ListAdapter;

    iput-object p2, p0, Lorg/telegram/ui/EditWidgetActivity$ListAdapter$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/ui/Cells/GroupCreateUserCell;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/EditWidgetActivity$ListAdapter$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/EditWidgetActivity$ListAdapter;

    iget-object v1, p0, Lorg/telegram/ui/EditWidgetActivity$ListAdapter$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/ui/Cells/GroupCreateUserCell;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/EditWidgetActivity$ListAdapter;->$r8$lambda$rclc1fCILNbWnC7IR4B40e_ii_U(Lorg/telegram/ui/EditWidgetActivity$ListAdapter;Lorg/telegram/ui/Cells/GroupCreateUserCell;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
