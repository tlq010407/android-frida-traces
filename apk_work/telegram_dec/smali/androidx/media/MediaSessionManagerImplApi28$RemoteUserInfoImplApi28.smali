.class final Landroidx/media/MediaSessionManagerImplApi28$RemoteUserInfoImplApi28;
.super Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;
.source "SourceFile"


# instance fields
.field final mObject:Landroid/media/session/MediaSessionManager$RemoteUserInfo;


# direct methods
.method constructor <init>(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V
    .locals 3

    .line 0
    invoke-static {p1}, Landroidx/media/MediaSessionManagerImplApi28$RemoteUserInfoImplApi28$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroidx/media/MediaSessionManagerImplApi28$RemoteUserInfoImplApi28$$ExternalSyntheticApiModelOutline1;->m(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)I

    move-result v1

    invoke-static {p1}, Landroidx/media/MediaSessionManagerImplApi28$RemoteUserInfoImplApi28$$ExternalSyntheticApiModelOutline2;->m(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;-><init>(Ljava/lang/String;II)V

    iput-object p1, p0, Landroidx/media/MediaSessionManagerImplApi28$RemoteUserInfoImplApi28;->mObject:Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .line 0
    invoke-direct {p0, p1, p2, p3}, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    invoke-direct {v0, p1, p2, p3}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Landroidx/media/MediaSessionManagerImplApi28$RemoteUserInfoImplApi28;->mObject:Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    return-void
.end method

.method static getPackageName(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Landroidx/media/MediaSessionManagerImplApi28$RemoteUserInfoImplApi28$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
