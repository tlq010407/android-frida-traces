.class abstract Landroid/support/v4/media/session/MediaSessionCompat$QueueItem$Api21Impl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api21Impl"
.end annotation


# direct methods
.method static createQueueItem(Landroid/media/MediaDescription;J)Landroid/media/session/MediaSession$QueueItem;
    .locals 1

    new-instance v0, Landroid/media/session/MediaSession$QueueItem;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/session/MediaSession$QueueItem;-><init>(Landroid/media/MediaDescription;J)V

    return-object v0
.end method

.method static getDescription(Landroid/media/session/MediaSession$QueueItem;)Landroid/media/MediaDescription;
    .locals 0

    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem$Api21Impl$$ExternalSyntheticApiModelOutline1;->m(Landroid/media/session/MediaSession$QueueItem;)Landroid/media/MediaDescription;

    move-result-object p0

    return-object p0
.end method

.method static getQueueId(Landroid/media/session/MediaSession$QueueItem;)J
    .locals 2

    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem$Api21Impl$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/session/MediaSession$QueueItem;)J

    move-result-wide v0

    return-wide v0
.end method
