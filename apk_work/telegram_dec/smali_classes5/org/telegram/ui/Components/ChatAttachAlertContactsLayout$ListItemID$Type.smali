.class public final enum Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ListItemID$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ListItemID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ListItemID$Type;

.field public static final enum CONTACT:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ListItemID$Type;

.field public static final enum USER:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ListItemID$Type;


# direct methods
.method private static synthetic $values()[Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ListItemID$Type;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ListItemID$Type;

    sget-object v1, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ListItemID$Type;->USER:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ListItemID$Type;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ListItemID$Type;->CONTACT:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ListItemID$Type;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ListItemID$Type;

    const-string v1, "USER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ListItemID$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ListItemID$Type;->USER:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ListItemID$Type;

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ListItemID$Type;

    const-string v1, "CONTACT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ListItemID$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ListItemID$Type;->CONTACT:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ListItemID$Type;

    invoke-static {}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ListItemID$Type;->$values()[Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ListItemID$Type;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ListItemID$Type;->$VALUES:[Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ListItemID$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ListItemID$Type;
    .locals 1

    const-class v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ListItemID$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ListItemID$Type;

    return-object p0
.end method

.method public static values()[Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ListItemID$Type;
    .locals 1

    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ListItemID$Type;->$VALUES:[Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ListItemID$Type;

    invoke-virtual {v0}, [Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ListItemID$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ListItemID$Type;

    return-object v0
.end method
