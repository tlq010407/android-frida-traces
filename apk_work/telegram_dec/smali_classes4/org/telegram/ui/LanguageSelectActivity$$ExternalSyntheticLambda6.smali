.class public final synthetic Lorg/telegram/ui/LanguageSelectActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LanguageSelectActivity;

.field public final synthetic f$1:Lorg/telegram/ui/ActionBar/AlertDialog;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LanguageSelectActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity$$ExternalSyntheticLambda6;->f$0:Lorg/telegram/ui/LanguageSelectActivity;

    iput-object p2, p0, Lorg/telegram/ui/LanguageSelectActivity$$ExternalSyntheticLambda6;->f$1:Lorg/telegram/ui/ActionBar/AlertDialog;

    iput-boolean p3, p0, Lorg/telegram/ui/LanguageSelectActivity$$ExternalSyntheticLambda6;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$$ExternalSyntheticLambda6;->f$0:Lorg/telegram/ui/LanguageSelectActivity;

    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity$$ExternalSyntheticLambda6;->f$1:Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-boolean v2, p0, Lorg/telegram/ui/LanguageSelectActivity$$ExternalSyntheticLambda6;->f$2:Z

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/LanguageSelectActivity;->$r8$lambda$HCh4amaV5Bczi73xUmgNfiacZr0(Lorg/telegram/ui/LanguageSelectActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Z)V

    return-void
.end method
