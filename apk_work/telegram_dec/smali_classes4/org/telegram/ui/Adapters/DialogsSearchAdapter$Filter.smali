.class public final enum Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Filter"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;

.field public static final enum All:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;

.field public static final enum Channels:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;

.field public static final enum Groups:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;

.field public static final enum Private:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;


# instance fields
.field public final flags:I

.field public final strFromResId:I

.field public final strResId:I


# direct methods
.method private static synthetic $values()[Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;

    sget-object v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;->All:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;->Private:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;->Groups:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;->Channels:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    new-instance v6, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;

    sget v4, Lorg/telegram/messenger/R$string;->SearchMessagesFilterAll:I

    sget v5, Lorg/telegram/messenger/R$string;->SearchMessagesFilterAllFrom:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v1, "All"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;->All:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;

    new-instance v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;

    sget v11, Lorg/telegram/messenger/R$string;->SearchMessagesFilterPrivate:I

    sget v12, Lorg/telegram/messenger/R$string;->SearchMessagesFilterPrivateFrom:I

    const/4 v9, 0x1

    const/16 v10, 0x8

    const-string v8, "Private"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;->Private:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;

    new-instance v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;

    sget v5, Lorg/telegram/messenger/R$string;->SearchMessagesFilterGroup:I

    sget v6, Lorg/telegram/messenger/R$string;->SearchMessagesFilterGroupFrom:I

    const/4 v3, 0x2

    const/4 v4, 0x4

    const-string v2, "Groups"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;->Groups:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;

    new-instance v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;

    sget v11, Lorg/telegram/messenger/R$string;->SearchMessagesFilterChannels:I

    sget v12, Lorg/telegram/messenger/R$string;->SearchMessagesFilterChannelsFrom:I

    const/4 v9, 0x3

    const/4 v10, 0x2

    const-string v8, "Channels"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;->Channels:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;

    invoke-static {}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;->$values()[Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;->$VALUES:[Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;->flags:I

    iput p4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;->strResId:I

    iput p5, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;->strFromResId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;
    .locals 1

    const-class v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;

    return-object p0
.end method

.method public static values()[Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;
    .locals 1

    sget-object v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;->$VALUES:[Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;

    invoke-virtual {v0}, [Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/Adapters/DialogsSearchAdapter$Filter;

    return-object v0
.end method
