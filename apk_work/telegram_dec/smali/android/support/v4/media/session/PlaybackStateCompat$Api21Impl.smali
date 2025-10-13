.class abstract Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/PlaybackStateCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api21Impl"
.end annotation


# direct methods
.method static addCustomAction(Landroid/media/session/PlaybackState$Builder;Landroid/media/session/PlaybackState$CustomAction;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl$$ExternalSyntheticApiModelOutline11;->m(Landroid/media/session/PlaybackState$Builder;Landroid/media/session/PlaybackState$CustomAction;)Landroid/media/session/PlaybackState$Builder;

    return-void
.end method

.method static build(Landroid/media/session/PlaybackState$CustomAction$Builder;)Landroid/media/session/PlaybackState$CustomAction;
    .locals 0

    .line 0
    invoke-static {p0}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl$$ExternalSyntheticApiModelOutline21;->m(Landroid/media/session/PlaybackState$CustomAction$Builder;)Landroid/media/session/PlaybackState$CustomAction;

    move-result-object p0

    return-object p0
.end method

.method static build(Landroid/media/session/PlaybackState$Builder;)Landroid/media/session/PlaybackState;
    .locals 0

    .line 0
    invoke-static {p0}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl$$ExternalSyntheticApiModelOutline10;->m(Landroid/media/session/PlaybackState$Builder;)Landroid/media/session/PlaybackState;

    move-result-object p0

    return-object p0
.end method

.method static createBuilder()Landroid/media/session/PlaybackState$Builder;
    .locals 1

    new-instance v0, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v0}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    return-object v0
.end method

.method static createCustomActionBuilder(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/media/session/PlaybackState$CustomAction$Builder;
    .locals 1

    new-instance v0, Landroid/media/session/PlaybackState$CustomAction$Builder;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/session/PlaybackState$CustomAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method static getAction(Landroid/media/session/PlaybackState$CustomAction;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl$$ExternalSyntheticApiModelOutline13;->m(Landroid/media/session/PlaybackState$CustomAction;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getActions(Landroid/media/session/PlaybackState;)J
    .locals 2

    invoke-static {p0}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl$$ExternalSyntheticApiModelOutline19;->m(Landroid/media/session/PlaybackState;)J

    move-result-wide v0

    return-wide v0
.end method

.method static getActiveQueueItemId(Landroid/media/session/PlaybackState;)J
    .locals 2

    invoke-static {p0}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/session/PlaybackState;)J

    move-result-wide v0

    return-wide v0
.end method

.method static getBufferedPosition(Landroid/media/session/PlaybackState;)J
    .locals 2

    invoke-static {p0}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl$$ExternalSyntheticApiModelOutline7;->m(Landroid/media/session/PlaybackState;)J

    move-result-wide v0

    return-wide v0
.end method

.method static getCustomActions(Landroid/media/session/PlaybackState;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/session/PlaybackState;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/session/PlaybackState$CustomAction;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl$$ExternalSyntheticApiModelOutline12;->m(Landroid/media/session/PlaybackState;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static getErrorMessage(Landroid/media/session/PlaybackState;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl$$ExternalSyntheticApiModelOutline16;->m(Landroid/media/session/PlaybackState;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static getExtras(Landroid/media/session/PlaybackState$CustomAction;)Landroid/os/Bundle;
    .locals 0

    invoke-static {p0}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl$$ExternalSyntheticApiModelOutline6;->m(Landroid/media/session/PlaybackState$CustomAction;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static getIcon(Landroid/media/session/PlaybackState$CustomAction;)I
    .locals 0

    invoke-static {p0}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl$$ExternalSyntheticApiModelOutline20;->m(Landroid/media/session/PlaybackState$CustomAction;)I

    move-result p0

    return p0
.end method

.method static getLastPositionUpdateTime(Landroid/media/session/PlaybackState;)J
    .locals 2

    invoke-static {p0}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl$$ExternalSyntheticApiModelOutline4;->m(Landroid/media/session/PlaybackState;)J

    move-result-wide v0

    return-wide v0
.end method

.method static getName(Landroid/media/session/PlaybackState$CustomAction;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl$$ExternalSyntheticApiModelOutline3;->m(Landroid/media/session/PlaybackState$CustomAction;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static getPlaybackSpeed(Landroid/media/session/PlaybackState;)F
    .locals 0

    invoke-static {p0}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl$$ExternalSyntheticApiModelOutline9;->m(Landroid/media/session/PlaybackState;)F

    move-result p0

    return p0
.end method

.method static getPosition(Landroid/media/session/PlaybackState;)J
    .locals 2

    invoke-static {p0}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl$$ExternalSyntheticApiModelOutline15;->m(Landroid/media/session/PlaybackState;)J

    move-result-wide v0

    return-wide v0
.end method

.method static getState(Landroid/media/session/PlaybackState;)I
    .locals 0

    invoke-static {p0}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl$$ExternalSyntheticApiModelOutline14;->m(Landroid/media/session/PlaybackState;)I

    move-result p0

    return p0
.end method

.method static setActions(Landroid/media/session/PlaybackState$Builder;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl$$ExternalSyntheticApiModelOutline5;->m(Landroid/media/session/PlaybackState$Builder;J)Landroid/media/session/PlaybackState$Builder;

    return-void
.end method

.method static setActiveQueueItemId(Landroid/media/session/PlaybackState$Builder;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl$$ExternalSyntheticApiModelOutline2;->m(Landroid/media/session/PlaybackState$Builder;J)Landroid/media/session/PlaybackState$Builder;

    return-void
.end method

.method static setBufferedPosition(Landroid/media/session/PlaybackState$Builder;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl$$ExternalSyntheticApiModelOutline1;->m(Landroid/media/session/PlaybackState$Builder;J)Landroid/media/session/PlaybackState$Builder;

    return-void
.end method

.method static setErrorMessage(Landroid/media/session/PlaybackState$Builder;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl$$ExternalSyntheticApiModelOutline8;->m(Landroid/media/session/PlaybackState$Builder;Ljava/lang/CharSequence;)Landroid/media/session/PlaybackState$Builder;

    return-void
.end method

.method static setExtras(Landroid/media/session/PlaybackState$CustomAction$Builder;Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl$$ExternalSyntheticApiModelOutline18;->m(Landroid/media/session/PlaybackState$CustomAction$Builder;Landroid/os/Bundle;)Landroid/media/session/PlaybackState$CustomAction$Builder;

    return-void
.end method

.method static setState(Landroid/media/session/PlaybackState$Builder;IJFJ)V
    .locals 0

    invoke-static/range {p0 .. p6}, Landroid/support/v4/media/session/PlaybackStateCompat$Api21Impl$$ExternalSyntheticApiModelOutline17;->m(Landroid/media/session/PlaybackState$Builder;IJFJ)Landroid/media/session/PlaybackState$Builder;

    return-void
.end method
