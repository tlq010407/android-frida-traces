.class final enum Lorg/webrtc/CameraCapturer$SwitchState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/CameraCapturer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SwitchState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/webrtc/CameraCapturer$SwitchState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/webrtc/CameraCapturer$SwitchState;

.field public static final enum IDLE:Lorg/webrtc/CameraCapturer$SwitchState;

.field public static final enum IN_PROGRESS:Lorg/webrtc/CameraCapturer$SwitchState;

.field public static final enum PENDING:Lorg/webrtc/CameraCapturer$SwitchState;


# direct methods
.method private static synthetic $values()[Lorg/webrtc/CameraCapturer$SwitchState;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/webrtc/CameraCapturer$SwitchState;

    sget-object v1, Lorg/webrtc/CameraCapturer$SwitchState;->IDLE:Lorg/webrtc/CameraCapturer$SwitchState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/webrtc/CameraCapturer$SwitchState;->PENDING:Lorg/webrtc/CameraCapturer$SwitchState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/webrtc/CameraCapturer$SwitchState;->IN_PROGRESS:Lorg/webrtc/CameraCapturer$SwitchState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/webrtc/CameraCapturer$SwitchState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/webrtc/CameraCapturer$SwitchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/CameraCapturer$SwitchState;->IDLE:Lorg/webrtc/CameraCapturer$SwitchState;

    new-instance v0, Lorg/webrtc/CameraCapturer$SwitchState;

    const-string v1, "PENDING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/webrtc/CameraCapturer$SwitchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/CameraCapturer$SwitchState;->PENDING:Lorg/webrtc/CameraCapturer$SwitchState;

    new-instance v0, Lorg/webrtc/CameraCapturer$SwitchState;

    const-string v1, "IN_PROGRESS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/webrtc/CameraCapturer$SwitchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/CameraCapturer$SwitchState;->IN_PROGRESS:Lorg/webrtc/CameraCapturer$SwitchState;

    invoke-static {}, Lorg/webrtc/CameraCapturer$SwitchState;->$values()[Lorg/webrtc/CameraCapturer$SwitchState;

    move-result-object v0

    sput-object v0, Lorg/webrtc/CameraCapturer$SwitchState;->$VALUES:[Lorg/webrtc/CameraCapturer$SwitchState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/webrtc/CameraCapturer$SwitchState;
    .locals 1

    const-class v0, Lorg/webrtc/CameraCapturer$SwitchState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/webrtc/CameraCapturer$SwitchState;

    return-object p0
.end method

.method public static values()[Lorg/webrtc/CameraCapturer$SwitchState;
    .locals 1

    sget-object v0, Lorg/webrtc/CameraCapturer$SwitchState;->$VALUES:[Lorg/webrtc/CameraCapturer$SwitchState;

    invoke-virtual {v0}, [Lorg/webrtc/CameraCapturer$SwitchState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/webrtc/CameraCapturer$SwitchState;

    return-object v0
.end method
