.class public final synthetic Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda12;->f$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda12;->f$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->$r8$lambda$4sON_7PXXEDIjVcS1F1IeUciROA(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
