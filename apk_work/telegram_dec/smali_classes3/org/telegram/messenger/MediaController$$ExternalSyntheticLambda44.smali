.class public final synthetic Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda44;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 0
    check-cast p1, Lorg/telegram/messenger/MessageObject;

    check-cast p2, Lorg/telegram/messenger/MessageObject;

    invoke-static {p1, p2}, Lorg/telegram/messenger/MediaController;->$r8$lambda$Z0Erp2L8slKvvC3qPEU0fm69vKk(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;)I

    move-result p1

    return p1
.end method
