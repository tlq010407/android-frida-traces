.class public final synthetic Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;

    iput p2, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector$$ExternalSyntheticLambda0;->f$1:I

    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;->$r8$lambda$lHkKEmnJSDx2_w_YKtBtEdPF-jM(Lorg/telegram/ui/Stories/recorder/MultipleStoriesSelector;ILandroid/view/View;)V

    return-void
.end method
