.class public final synthetic Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback2;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->$r8$lambda$oCmhGPLtVDpHX_R_KASdOz9iUKo(Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;ILjava/util/ArrayList;)V

    return-void
.end method
