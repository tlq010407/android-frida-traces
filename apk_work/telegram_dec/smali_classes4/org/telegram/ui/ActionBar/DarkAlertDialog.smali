.class public Lorg/telegram/ui/ActionBar/DarkAlertDialog;
.super Lorg/telegram/ui/ActionBar/AlertDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ActionBar/DarkAlertDialog$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected getThemedColor(I)I
    .locals 1

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    if-ne p1, v0, :cond_0

    const p1, -0xd9d9da

    return p1

    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    if-eq p1, v0, :cond_2

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButton:I

    if-eq p1, v0, :cond_2

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogScrollGlow:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getThemedColor(I)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    return p1
.end method
