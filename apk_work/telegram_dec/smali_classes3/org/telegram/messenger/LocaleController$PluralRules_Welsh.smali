.class public Lorg/telegram/messenger/LocaleController$PluralRules_Welsh;
.super Lorg/telegram/messenger/LocaleController$PluralRules;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/LocaleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluralRules_Welsh"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/LocaleController$PluralRules;-><init>()V

    return-void
.end method


# virtual methods
.method public quantityForNumber(I)I
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v0, :cond_1

    return v1

    :cond_1
    if-ne p1, v1, :cond_2

    const/4 p1, 0x4

    return p1

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    const/16 p1, 0x8

    return p1

    :cond_3
    const/4 v0, 0x6

    if-ne p1, v0, :cond_4

    const/16 p1, 0x10

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method
