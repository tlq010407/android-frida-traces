.class public final synthetic Lorg/telegram/ui/FilterChatlistActivity$ListAdapter$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ActionBar/AlertDialog$Builder;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/FilterChatlistActivity$ListAdapter$1$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/FilterChatlistActivity$ListAdapter$1$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-static {v0, p1, p2, p3}, Lorg/telegram/ui/FilterChatlistActivity$ListAdapter$1;->$r8$lambda$7YDJLZtC9zlvS_dgDCiC9wZW-Sw(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
