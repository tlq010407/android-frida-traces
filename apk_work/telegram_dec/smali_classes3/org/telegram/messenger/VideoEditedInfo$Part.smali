.class public Lorg/telegram/messenger/VideoEditedInfo$Part;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/VideoEditedInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Part"
.end annotation


# instance fields
.field public animatedFileDrawable:Lorg/telegram/ui/Components/AnimatedFileDrawable;

.field public currentFrame:F

.field public duration:J

.field public flags:I

.field public framesPerDraw:F

.field public height:I

.field public isVideo:Z

.field public left:F

.field public loop:Z

.field public msPerFrame:F

.field public muted:Z

.field public offset:J

.field public part:Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;

.field public path:Ljava/lang/String;

.field public player:Lorg/telegram/messenger/video/MediaCodecPlayer;

.field public posBuffer:Ljava/nio/FloatBuffer;

.field public right:F

.field public surfaceTexture:Landroid/graphics/SurfaceTexture;

.field public uvBuffer:Ljava/nio/FloatBuffer;

.field public volume:F

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 0
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/messenger/VideoEditedInfo$Part;->volume:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/VideoEditedInfo$Part;->offset:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/VideoEditedInfo$Part;->loop:Z

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/messenger/VideoEditedInfo$Part;->volume:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/VideoEditedInfo$Part;->offset:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/VideoEditedInfo$Part;->loop:Z

    iget-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    iput-boolean v0, p0, Lorg/telegram/messenger/VideoEditedInfo$Part;->isVideo:Z

    iget-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->muted:Z

    iput-boolean v0, p0, Lorg/telegram/messenger/VideoEditedInfo$Part;->muted:Z

    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo$Part;->path:Ljava/lang/String;

    iget v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoVolume:F

    iput v0, p0, Lorg/telegram/messenger/VideoEditedInfo$Part;->volume:F

    iget-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoLoop:Z

    iput-boolean v0, p0, Lorg/telegram/messenger/VideoEditedInfo$Part;->loop:Z

    iget-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoOffset:J

    iput-wide v0, p0, Lorg/telegram/messenger/VideoEditedInfo$Part;->offset:J

    iget v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoLeft:F

    iput v0, p0, Lorg/telegram/messenger/VideoEditedInfo$Part;->left:F

    iget v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoRight:F

    iput v0, p0, Lorg/telegram/messenger/VideoEditedInfo$Part;->right:F

    iget v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    iput v0, p0, Lorg/telegram/messenger/VideoEditedInfo$Part;->width:I

    iget v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    iput v0, p0, Lorg/telegram/messenger/VideoEditedInfo$Part;->height:I

    iget-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    iput-wide v0, p0, Lorg/telegram/messenger/VideoEditedInfo$Part;->duration:J

    return-void
.end method

.method public static toParts(Lorg/telegram/ui/Stories/recorder/StoryEntry;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/ui/Stories/recorder/StoryEntry;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/VideoEditedInfo$Part;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    new-instance v3, Lorg/telegram/messenger/VideoEditedInfo$Part;

    invoke-direct {v3, v2}, Lorg/telegram/messenger/VideoEditedInfo$Part;-><init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayout;

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/CollageLayout;->parts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;

    iput-object v2, v3, Lorg/telegram/messenger/VideoEditedInfo$Part;->part:Lorg/telegram/ui/Stories/recorder/CollageLayout$Part;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static toStoryEntries(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/VideoEditedInfo$Part;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Stories/recorder/StoryEntry;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/VideoEditedInfo$Part;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-direct {v2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;-><init>()V

    iget-boolean v3, v1, Lorg/telegram/messenger/VideoEditedInfo$Part;->isVideo:Z

    iput-boolean v3, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    iget-boolean v3, v1, Lorg/telegram/messenger/VideoEditedInfo$Part;->muted:Z

    iput-boolean v3, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->muted:Z

    new-instance v3, Ljava/io/File;

    iget-object v4, v1, Lorg/telegram/messenger/VideoEditedInfo$Part;->path:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    iget v3, v1, Lorg/telegram/messenger/VideoEditedInfo$Part;->volume:F

    iput v3, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoVolume:F

    iget-boolean v3, v1, Lorg/telegram/messenger/VideoEditedInfo$Part;->loop:Z

    iput-boolean v3, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoLoop:Z

    iget-wide v3, v1, Lorg/telegram/messenger/VideoEditedInfo$Part;->offset:J

    iput-wide v3, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoOffset:J

    iget v3, v1, Lorg/telegram/messenger/VideoEditedInfo$Part;->left:F

    iput v3, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoLeft:F

    iget v3, v1, Lorg/telegram/messenger/VideoEditedInfo$Part;->right:F

    iput v3, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoRight:F

    iget v3, v1, Lorg/telegram/messenger/VideoEditedInfo$Part;->width:I

    iput v3, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    iget v3, v1, Lorg/telegram/messenger/VideoEditedInfo$Part;->height:I

    iput v3, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    iget-wide v3, v1, Lorg/telegram/messenger/VideoEditedInfo$Part;->duration:J

    iput-wide v3, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/VideoEditedInfo$Part;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/telegram/messenger/VideoEditedInfo$Part;->isVideo:Z

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lorg/telegram/messenger/VideoEditedInfo$Part;->loop:Z

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput-boolean v2, p0, Lorg/telegram/messenger/VideoEditedInfo$Part;->muted:Z

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo$Part;->path:Ljava/lang/String;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/VideoEditedInfo$Part;->volume:F

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/VideoEditedInfo$Part;->offset:J

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/VideoEditedInfo$Part;->left:F

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readFloat(Z)F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/VideoEditedInfo$Part;->right:F

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/VideoEditedInfo$Part;->width:I

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/VideoEditedInfo$Part;->height:I

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/messenger/VideoEditedInfo$Part;->duration:J

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/messenger/VideoEditedInfo$Part;->isVideo:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$Part;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$Part;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/messenger/VideoEditedInfo$Part;->flags:I

    iget-boolean v1, p0, Lorg/telegram/messenger/VideoEditedInfo$Part;->loop:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/messenger/VideoEditedInfo$Part;->flags:I

    iget-boolean v1, p0, Lorg/telegram/messenger/VideoEditedInfo$Part;->muted:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x5

    :goto_2
    iput v0, p0, Lorg/telegram/messenger/VideoEditedInfo$Part;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo$Part;->path:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$Part;->volume:F

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeFloat(F)V

    iget-wide v0, p0, Lorg/telegram/messenger/VideoEditedInfo$Part;->offset:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$Part;->left:F

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeFloat(F)V

    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$Part;->right:F

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeFloat(F)V

    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$Part;->width:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$Part;->height:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget-wide v0, p0, Lorg/telegram/messenger/VideoEditedInfo$Part;->duration:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    return-void
.end method
