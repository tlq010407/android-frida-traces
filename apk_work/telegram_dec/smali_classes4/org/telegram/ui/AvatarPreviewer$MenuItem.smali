.class public final enum Lorg/telegram/ui/AvatarPreviewer$MenuItem;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/AvatarPreviewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MenuItem"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/telegram/ui/AvatarPreviewer$MenuItem;

.field public static final enum MENTION:Lorg/telegram/ui/AvatarPreviewer$MenuItem;

.field public static final enum OPEN_CHANNEL:Lorg/telegram/ui/AvatarPreviewer$MenuItem;

.field public static final enum OPEN_GROUP:Lorg/telegram/ui/AvatarPreviewer$MenuItem;

.field public static final enum OPEN_PROFILE:Lorg/telegram/ui/AvatarPreviewer$MenuItem;

.field public static final enum SEARCH_MESSAGES:Lorg/telegram/ui/AvatarPreviewer$MenuItem;

.field public static final enum SEND_MESSAGE:Lorg/telegram/ui/AvatarPreviewer$MenuItem;


# instance fields
.field private final iconResId:I

.field private final labelKey:Ljava/lang/String;

.field private final labelResId:I


# direct methods
.method private static synthetic $values()[Lorg/telegram/ui/AvatarPreviewer$MenuItem;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    sget-object v1, Lorg/telegram/ui/AvatarPreviewer$MenuItem;->OPEN_PROFILE:Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/AvatarPreviewer$MenuItem;->OPEN_CHANNEL:Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/AvatarPreviewer$MenuItem;->OPEN_GROUP:Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/AvatarPreviewer$MenuItem;->SEND_MESSAGE:Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/AvatarPreviewer$MenuItem;->MENTION:Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/AvatarPreviewer$MenuItem;->SEARCH_MESSAGES:Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    new-instance v6, Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    sget v4, Lorg/telegram/messenger/R$string;->OpenProfile:I

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_openprofile:I

    const/4 v2, 0x0

    const-string v3, "OpenProfile"

    const-string v1, "OPEN_PROFILE"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/AvatarPreviewer$MenuItem;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v6, Lorg/telegram/ui/AvatarPreviewer$MenuItem;->OPEN_PROFILE:Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    new-instance v0, Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    sget v11, Lorg/telegram/messenger/R$string;->OpenChannel2:I

    sget v12, Lorg/telegram/messenger/R$drawable;->msg_channel:I

    const/4 v9, 0x1

    const-string v10, "OpenChannel2"

    const-string v8, "OPEN_CHANNEL"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/telegram/ui/AvatarPreviewer$MenuItem;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lorg/telegram/ui/AvatarPreviewer$MenuItem;->OPEN_CHANNEL:Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    new-instance v0, Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    sget v5, Lorg/telegram/messenger/R$string;->OpenGroup2:I

    sget v11, Lorg/telegram/messenger/R$drawable;->msg_discussion:I

    const/4 v3, 0x2

    const-string v4, "OpenGroup2"

    const-string v2, "OPEN_GROUP"

    move-object v1, v0

    move v6, v11

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/AvatarPreviewer$MenuItem;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lorg/telegram/ui/AvatarPreviewer$MenuItem;->OPEN_GROUP:Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    new-instance v0, Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    sget v10, Lorg/telegram/messenger/R$string;->SendMessage:I

    const/4 v8, 0x3

    const-string v9, "SendMessage"

    const-string v7, "SEND_MESSAGE"

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lorg/telegram/ui/AvatarPreviewer$MenuItem;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lorg/telegram/ui/AvatarPreviewer$MenuItem;->SEND_MESSAGE:Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    new-instance v0, Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    sget v5, Lorg/telegram/messenger/R$string;->Mention:I

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_mention:I

    const/4 v3, 0x4

    const-string v4, "Mention"

    const-string v2, "MENTION"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/AvatarPreviewer$MenuItem;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lorg/telegram/ui/AvatarPreviewer$MenuItem;->MENTION:Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    new-instance v0, Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    sget v11, Lorg/telegram/messenger/R$string;->AvatarPreviewSearchMessages:I

    sget v12, Lorg/telegram/messenger/R$drawable;->msg_search:I

    const/4 v9, 0x5

    const-string v10, "AvatarPreviewSearchMessages"

    const-string v8, "SEARCH_MESSAGES"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/telegram/ui/AvatarPreviewer$MenuItem;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lorg/telegram/ui/AvatarPreviewer$MenuItem;->SEARCH_MESSAGES:Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    invoke-static {}, Lorg/telegram/ui/AvatarPreviewer$MenuItem;->$values()[Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/AvatarPreviewer$MenuItem;->$VALUES:[Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/telegram/ui/AvatarPreviewer$MenuItem;->labelKey:Ljava/lang/String;

    iput p4, p0, Lorg/telegram/ui/AvatarPreviewer$MenuItem;->labelResId:I

    iput p5, p0, Lorg/telegram/ui/AvatarPreviewer$MenuItem;->iconResId:I

    return-void
.end method

.method static synthetic access$2000(Lorg/telegram/ui/AvatarPreviewer$MenuItem;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/AvatarPreviewer$MenuItem;->labelKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/AvatarPreviewer$MenuItem;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/AvatarPreviewer$MenuItem;->labelResId:I

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/AvatarPreviewer$MenuItem;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/AvatarPreviewer$MenuItem;->iconResId:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/telegram/ui/AvatarPreviewer$MenuItem;
    .locals 1

    const-class v0, Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    return-object p0
.end method

.method public static values()[Lorg/telegram/ui/AvatarPreviewer$MenuItem;
    .locals 1

    sget-object v0, Lorg/telegram/ui/AvatarPreviewer$MenuItem;->$VALUES:[Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    invoke-virtual {v0}, [Lorg/telegram/ui/AvatarPreviewer$MenuItem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    return-object v0
.end method
