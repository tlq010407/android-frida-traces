.class public final enum Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

.field public static final enum GIF:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

.field public static final enum KEYBOARD:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

.field public static final enum SMILE:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

.field public static final enum STICKER:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

.field public static final enum VIDEO:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

.field public static final enum VOICE:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;


# direct methods
.method private static synthetic $values()[Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    sget-object v1, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;->VOICE:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;->VIDEO:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;->STICKER:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;->KEYBOARD:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;->SMILE:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;->GIF:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    const-string v1, "VOICE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;->VOICE:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    new-instance v0, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    const-string v1, "VIDEO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;->VIDEO:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    new-instance v0, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    const-string v1, "STICKER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;->STICKER:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    new-instance v0, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    const-string v1, "KEYBOARD"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;->KEYBOARD:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    new-instance v0, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    const-string v1, "SMILE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;->SMILE:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    new-instance v0, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    const-string v1, "GIF"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;->GIF:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    invoke-static {}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;->$values()[Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;->$VALUES:[Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;
    .locals 1

    const-class v0, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    return-object p0
.end method

.method public static values()[Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;
    .locals 1

    sget-object v0, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;->$VALUES:[Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    invoke-virtual {v0}, [Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    return-object v0
.end method
