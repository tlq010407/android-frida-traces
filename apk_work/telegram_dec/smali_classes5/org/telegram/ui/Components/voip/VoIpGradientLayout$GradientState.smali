.class public final enum Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/voip/VoIpGradientLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GradientState"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;

.field public static final enum BAD_CONNECTION:Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;

.field public static final enum CALLING:Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;

.field public static final enum CONNECTED:Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;


# direct methods
.method private static synthetic $values()[Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;

    sget-object v1, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;->CALLING:Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;->CONNECTED:Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;->BAD_CONNECTION:Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;

    const-string v1, "CALLING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;->CALLING:Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;

    new-instance v0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;

    const-string v1, "CONNECTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;->CONNECTED:Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;

    new-instance v0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;

    const-string v1, "BAD_CONNECTION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;->BAD_CONNECTION:Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;

    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;->$values()[Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;->$VALUES:[Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;
    .locals 1

    const-class v0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;

    return-object p0
.end method

.method public static values()[Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;
    .locals 1

    sget-object v0, Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;->$VALUES:[Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;

    invoke-virtual {v0}, [Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/Components/voip/VoIpGradientLayout$GradientState;

    return-object v0
.end method
