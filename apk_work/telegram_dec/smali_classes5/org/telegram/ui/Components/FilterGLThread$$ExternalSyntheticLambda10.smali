.class public final synthetic Lorg/telegram/ui/Components/FilterGLThread$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/FilterGLThread;

.field public final synthetic f$1:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/FilterGLThread;Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/FilterGLThread$$ExternalSyntheticLambda10;->f$0:Lorg/telegram/ui/Components/FilterGLThread;

    iput-object p2, p0, Lorg/telegram/ui/Components/FilterGLThread$$ExternalSyntheticLambda10;->f$1:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$$ExternalSyntheticLambda10;->f$0:Lorg/telegram/ui/Components/FilterGLThread;

    iget-object v1, p0, Lorg/telegram/ui/Components/FilterGLThread$$ExternalSyntheticLambda10;->f$1:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/FilterGLThread;->$r8$lambda$4YCqWcv_Y9JC3zX00nzaUlILED8(Lorg/telegram/ui/Components/FilterGLThread;Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;)V

    return-void
.end method
