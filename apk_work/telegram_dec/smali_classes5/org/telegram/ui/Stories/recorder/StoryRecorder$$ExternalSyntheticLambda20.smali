.class public final synthetic Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback2;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda20;->f$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    iput-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda20;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda20;->f$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$$ExternalSyntheticLambda20;->f$1:Z

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->$r8$lambda$87xPXxFrcx7-pa9SwRywYpKVf_A(Lorg/telegram/ui/Stories/recorder/StoryRecorder;ZLjava/lang/Object;Landroid/graphics/Bitmap;)V

    return-void
.end method
