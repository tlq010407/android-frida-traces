.class public final synthetic Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda143;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:[Lorg/telegram/messenger/LocaleController$LocaleInfo;

.field public final synthetic f$1:[Lorg/telegram/ui/Cells/LanguageCell;


# direct methods
.method public synthetic constructor <init>([Lorg/telegram/messenger/LocaleController$LocaleInfo;[Lorg/telegram/ui/Cells/LanguageCell;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda143;->f$0:[Lorg/telegram/messenger/LocaleController$LocaleInfo;

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda143;->f$1:[Lorg/telegram/ui/Cells/LanguageCell;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda143;->f$0:[Lorg/telegram/messenger/LocaleController$LocaleInfo;

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda143;->f$1:[Lorg/telegram/ui/Cells/LanguageCell;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/LaunchActivity;->$r8$lambda$l-49tRaUC5RpAjdY3ma1gN1pSR0([Lorg/telegram/messenger/LocaleController$LocaleInfo;[Lorg/telegram/ui/Cells/LanguageCell;Landroid/view/View;)V

    return-void
.end method
